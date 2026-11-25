# Experiment 8 - Cyclomatic complexity of a flow graph
import sys
E, N, P = (int(x) for x in sys.argv[1:4]) if len(sys.argv) >= 4 else (17, 13, 5)   # edges, nodes, predicate nodes

v1 = E - N + 2          # V(G) = E - N + 2
v2 = P + 1              # V(G) = P + 1
print(f"Edges E = {E}, Nodes N = {N}, Predicate nodes P = {P}")
print(f"Method 1: V(G) = E - N + 2 = {E} - {N} + 2 = {v1}")
print(f"Method 2: V(G) = P + 1     = {P} + 1 = {v2}")
print("Both methods agree" if v1 == v2 else "Mismatch - recheck the graph")
print(f"Independent paths = {v1}  -> at least {v1} test cases needed for basis-path testing")
