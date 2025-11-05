# DPEX — Delayed Partial EXpansions Planner

The **DPEX (Delayed Partial EXpansions)** planner is an automated planning system developed for the **Control Variables Framework**, an extension of classical PDDL planning that supports **infinite decision spaces** through *control variables*.

---

## Overview

DPEX extends the PDDL syntax in a **minimally invasive** way to include **control variables**, enabling actions with parameters that take values from infinite domains. This allows the planner to operate over decision spaces that go beyond the finite, discrete nature of standard PDDL.

---

## Modified PDDL Syntax

We introduce the following additional flags to the PDDL syntax in order to model numeric planning problems with control variables:

* `:input` — defines the control variables (which can be expressed as any fluent, including object-dependent ones).
* `:bounds` — specifies the value interval for each control variable.
* `:precision` — defines the number of decimal places to consider (optional; if not specified, the planner assumes full machine precision). Integer values can be defined using precision 0.

Examples of domains and problems using these extensions can be found in the `domains/` and `problems/` folders.

---

## Installation

### Precompiled version

A **precompiled binary** for **Ubuntu 22.04** is provided in the root directory.

### Manual compilation

To compile manually, use the provided `Makefile`:

```bash
cd code
make
```

This will generate the `DPEX` executable in the main directory.

---

## Usage

Run the planner as follows:

```bash
./DPEX <domain_file> <problem_file> [options]
```

---

## Notes

* The **systematic sampling** method (`-phi systematic`) is **not yet implemented**.
* The **rectification flag** (`-rect`) defines the rectification mode:

  * `linear`: r(h,n)=h+α·n
  * `superlinear`: r(h,n)=h+n^α
  * `logarithmic`: r(h,n)=h+α·log(n)
* The **alpha** parameter modifies the rectification behavior.
* A fixed random seed can be provided for reproducibility using `-seed`.

---

## Example

```bash
./DPEX domains/cashpoint.pddl problems/cashpoint-d/1.pddl -rect superlinear -alpha 2 -phi uniform -hf gc
```

### Example output

```
;Plan found: 
<(goto location0 location1)>
<(withdraw location1 currency0),56.000000>
<(buy_with_cash item0 location1 currency0)>
<(withdraw location1 currency0),44.000000>
<(save_for_later currency0)>
<(withdraw location1 currency0),42.000000>
<(goto location1 location0)>
<(buy_with_cash item1 location0 currency0)>
;Actions: 8
;Iterations: 28
;Total reexpansions: 16
;time: 0.002
```
