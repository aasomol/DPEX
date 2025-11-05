#include <iostream>
#include <stdexcept>
#include <cstring>
#include "utils/utils.h"
#include "parser/parsedTask.h"
#include "parser/parser.h"
#include "preprocess/preprocess.h"
#include "grounder/grounder.h"
#include "planner/planner.h"

using namespace std;

struct PlannerParameters {
    char* domainFileName;
    char* problemFileName;
    bool debug;
    bool nogreedy;
    char* rectificationFunction;
    float alphaValue;
    char* phiFunction;
    int numberOfSamples;
    int seed;
    char* heuristicFunction;
    int max_its;

    PlannerParameters() {
    debug = false;
    nogreedy = false;
    rectificationFunction = (char*)"logarithmic";  
    alphaValue = 1.0f;                              
    phiFunction = (char*)"uniform";                   
    numberOfSamples = 10;                          
    seed = -1;             
    heuristicFunction = (char*)"ngc";
    max_its = 100000000;             
    }

};

void printUsage() {
    cout << "Usage: DPEX <domain_file> <problem_file> [options]" << endl;
    cout << "Options:" << endl;
    cout << "  -debug                  (flag)     Enable debug mode (default: false)" << endl;
    cout << "  -nogreedy               (flag)     Use node depth (default: false)" << endl;
    cout << "  -rect <function_name>   (string)   Rectification function: linear | superlinear | logarithmic (default: logarithmic)" << endl;
    cout << "  -alpha <value>          (float)    Alpha value (default: 1)" << endl;
    cout << "  -phi <function_name>    (string)   Sampling function: uniform | systematic | heuristic (default: uniform)" << endl;
    cout << "  -samples <number>       (int)      Number of samples for heuristic sampling (default: 10)" << endl;
    cout << "  -hf <function_name>     (string)   Heuristic function: gc | ngc | blind (default: ngc)" << endl;
    cout << "  -seed <number>          (int)      Seed for sampling (default: random)" << endl;
    cout << "  -max_its <number>       (int)      Maximum number of iterations (default: 100000000)" << endl;
}


ParsedTask* parseStage(PlannerParameters* parameters) {
    Parser parser;
    ParsedTask* parsedTask = parser.parseDomain(parameters->domainFileName);
    parser.parseProblem(parameters->problemFileName);
    return parsedTask;
}

PreprocessedTask* preprocessStage(ParsedTask* parsedTask) {
    Preprocess preprocess;
    PreprocessedTask* prepTask = preprocess.preprocessTask(parsedTask);
    return prepTask;
}

GroundedTask* groundingStage(PreprocessedTask* prepTask) {
    Grounder grounder;
    GroundedTask* gTask = grounder.groundTask(prepTask, false);
    return gTask;
}

GroundedTask* doPreprocess(PlannerParameters* parameters) {
    GroundedTask* gTask = nullptr;
    ParsedTask* parsedTask = parseStage(parameters);
    if (parsedTask != nullptr) {
        PreprocessedTask* prepTask = preprocessStage(parsedTask);
        if (prepTask != nullptr) {
            gTask = groundingStage(prepTask);
        }
    }
    return gTask;
}

void startPlanning(PlannerParameters* parameters) {
    GroundedTask* task = doPreprocess(parameters);
	if (task != nullptr) {
		Planner planner(task, parameters->debug, parameters->nogreedy, parameters->rectificationFunction, parameters->alphaValue, parameters->phiFunction, parameters->numberOfSamples, parameters->seed, parameters->heuristicFunction, parameters->max_its);
        planner.start();
	}
}

int main(int argc, char* argv[])
{
    PlannerParameters parameters;
    if (argc < 2) {
        printUsage();
    }
    else {
        parameters.domainFileName = argv[1];
        parameters.problemFileName = argv[2];

        // Process optional parameters
        for (int i = 3; i < argc; ++i) {
            if (compareStr(argv[i], "-debug")) {
                parameters.debug = true;
            } else if (compareStr(argv[i], "-nogreedy")) {
                parameters.nogreedy = true;
            } else if (compareStr(argv[i], "-rect") && i + 1 < argc) {
                parameters.rectificationFunction = argv[++i];
                if (strcmp(parameters.rectificationFunction, "linear") != 0 &&
                    strcmp(parameters.rectificationFunction, "superlinear") != 0 &&
                    strcmp(parameters.rectificationFunction, "logarithmic") != 0) {
                    cerr << "Error: rectification function must be one of: linear, superlinear, logarithmic." << endl;
                    return 1;
                }
            } else if (compareStr(argv[i], "-alpha") && i + 1 < argc) {
                parameters.alphaValue = atof(argv[++i]);
            } else if (compareStr(argv[i], "-phi") && i + 1 < argc) {
                parameters.phiFunction = argv[++i];
                if (strcmp(parameters.phiFunction, "uniform") != 0 &&
                    strcmp(parameters.phiFunction, "systematic") != 0 &&
                    strcmp(parameters.phiFunction, "heuristic") != 0) {
                    cerr << "Error: phi function must be one of: uniform, systematic, heuristic." << endl;
                    return 1;
                }
            } else if (compareStr(argv[i], "-samples") && i + 1 < argc) {
                parameters.numberOfSamples = atoi(argv[++i]);
            } else if (compareStr(argv[i], "-seed") && i + 1 < argc) {
                parameters.seed = atoi(argv[++i]);
            } else if (compareStr(argv[i], "-max_its") && i + 1 < argc) {
                parameters.max_its = atoi(argv[++i]);
            } else if (compareStr(argv[i], "-hf") && i + 1 < argc) {
                parameters.heuristicFunction = argv[++i];
                if (strcmp(parameters.heuristicFunction, "gc") != 0 &&
                    strcmp(parameters.heuristicFunction, "ngc") != 0 &&
                    strcmp(parameters.heuristicFunction, "blind") != 0) {
                    cerr << "Error: heuristic function (-hf) must be one of: gc, ngc, blind." << endl;
                    return 1;
                }
            }
            else {
                cerr << "Unknown option: " << argv[i] << endl;
                printUsage();
                return 1;
            }
        }

        try {
            std::srand(0);
            clock_t t = clock();
            startPlanning(&parameters);
            float time = toSeconds(t);
            cout << ";time: " << time << endl;
        }
        catch (const invalid_argument& e) {
            cerr << e.what() << endl;
        }
        catch (const PlannerException &e) {
            cerr << e.what() << endl;
        }
        catch (...) {  // Captura cualquier otra excepción inesperada
            cerr << "Unknown exception" << endl;
        }
    }
    return 0;
}
