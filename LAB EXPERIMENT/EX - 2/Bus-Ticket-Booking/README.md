# Software Engineering Lab

## Experiment 2 – Bus Ticket Booking System

### Aim
To design a prototype for a Bus Ticket Booking System using Figma.

### Tool Used
Figma

### Figma Prototype
https://plaque-surge-86696557.figma.site/

### index.html
<!DOCTYPE html>
<html>
<head>
    <title>Bus Ticket Booking</title>
</head>

<body>

    <h1>🚌 Bus Ticket Booking System</h1>

    <label>From:</label>
    <input type="text" value="Chennai">

    <br><br>

    <label>To:</label>
    <input type="text" value="Bangalore">

    <br><br>

    <button onclick="searchBus()">Search Bus</button>

    <h2>Available Buses</h2>

    <p>🚌 Purple Travels - ₹729</p>
    <button onclick="bookTicket()">Book Now</button>

    <script>
        function searchBus() {
            alert("Searching available buses...");
        }

        function bookTicket() {
            alert("Bus selected successfully!");
        }
    </script>

</body>
</html>

### Result
The Bus Ticket Booking System prototype was successfully designed using Figma.
