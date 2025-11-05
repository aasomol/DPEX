CC = g++-12
CFLAGS = -c -std=c++20 -O3
OBJS = DPEX.o parser.o syntaxAnalyzer.o parsedTask.o preprocess.o preprocessedTask.o grounder.o groundedTask.o bounds.o planner.o searchQueue.o state.o environment.o utils.o 

all: $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o DPEX
	
DPEX.o:
	$(CC) $(CFLAGS) DPEX.cpp

parser.o:
	$(CC) $(CFLAGS) parser/parser.cpp

syntaxAnalyzer.o:
	$(CC) $(CFLAGS) parser/syntaxAnalyzer.cpp

parsedTask.o:
	$(CC) $(CFLAGS) parser/parsedTask.cpp
	
preprocess.o:
	$(CC) $(CFLAGS) preprocess/preprocess.cpp
	
preprocessedTask.o:
	$(CC) $(CFLAGS) preprocess/preprocessedTask.cpp

grounder.o:
	$(CC) $(CFLAGS) grounder/grounder.cpp

groundedTask.o:
	$(CC) $(CFLAGS) grounder/groundedTask.cpp

bounds.o:
	$(CC) $(CFLAGS) planner/bounds.cpp

planner.o:
	$(CC) $(CFLAGS) planner/planner.cpp

searchQueue.o:
	$(CC) $(CFLAGS) planner/searchQueue.cpp

state.o:
	$(CC) $(CFLAGS) planner/state.cpp

environment.o:
	$(CC) $(CFLAGS) planner/environment.cpp

utils.o:
	$(CC) $(CFLAGS) utils/utils.cpp

clean:
	rm -f *.o

