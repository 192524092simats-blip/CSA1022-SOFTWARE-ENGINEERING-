# Experiment 06 - UML Class, Use Case and Activity Diagrams for An Online Food Delivery System

**Tools:** Umbrello | **Course Outcome:** CO1

## Aim
To design the Class diagram, Use Case diagram and Activity diagram for an Online Food
Delivery System showing the relevant classes, attributes, methods, actors and workflow.

## Software Requirements
● Umbrello UML Modeller / StarUML
● Windows / Linux PC

## Source_Code
- `activity_diagram.dot`
- `class_diagram.dot`
- `usecase_diagram.dot`

## How to run
Recreate the diagrams in Umbrello/StarUML from the Procedure. `.dot` sources + exported PNGs are included; regenerate with `dot -Tpng class_diagram.dot -o class.png` (Graphviz).

## Expected Output
● Class diagram with classes Customer, Restaurant, Menu, FoodItem, Order, Payment,
   DeliveryAgent, Delivery and their relationships.
● Use Case diagram with actors Customer, Restaurant, Delivery Agent, Administrator and use
   cases such as Browse Restaurants, Place Order, Make Payment, Track Order, Manage Menu,
   Accept Delivery.
● Activity diagram from browsing restaurants to order completion with decision nodes for
   payment success.

## Output_Screenshots
| File | Shows | How it was produced |
|---|---|---|
| `Output_01.png` | Class diagram - Online Food Delivery System | Diagram rendered with Graphviz from the .dot source (not an Umbrello window) |
| `Output_02.png` | Use Case diagram - Online Food Delivery System | Diagram rendered with Graphviz from the .dot source (not an Umbrello window) |
| `Output_03.png` | Activity diagram - Online Food Delivery System | Diagram rendered with Graphviz from the .dot source (not an Umbrello window) |

See `Output_Screenshots/CAPTURE_CHECKLIST.md` for the screenshots you still need to capture.

## Result
Thus the Class, Use Case and Activity diagrams for the Online Food Delivery System were
designed using the UML tool and verified successfully.

*Full procedure: `Experiment_Details.txt`.*
