# Experiment 08 - Cyclomatic Complexity of a Flow Graph

**Tools:** Raptor | **Course Outcome:** CO1

## Aim
To find the cyclomatic complexity of a program whose flow graph has 17 edges, 13 nodes and 5
predicate nodes, and to verify the result using the alternate formula.

## Software Requirements
● RAPTOR / any drawing tool for the control flow graph
● Calculator

## Source_Code
- `cyclomatic_complexity.py`

## How to run
`python cyclomatic_complexity.py` (defaults 17 13 5) or `python cyclomatic_complexity.py E N P`.

## Expected Output
● Using V(G) = E − N + 2 = 17 − 13 + 2 = 6
● Using V(G) = P + 1 = 5 + 1 = 6
● Both methods give V(G) = 6, so at least six independent test paths are required.

## Output_Screenshots
| File | Shows | How it was produced |
|---|---|---|
| `Output_01.png` | V(G) = 6 by both formulas | Real output captured from an actual run in the build sandbox |



## Result
Thus the cyclomatic complexity of the given flow graph was calculated as V(G) = 6 using both
formulae, indicating six independent paths and moderate complexity.

*Full procedure: `Experiment_Details.txt`.*
