<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">

    <style>
        body {
            background-image: url('images/admin4.jpg'); /* Path to your background image */
            background-size: cover; /* Ensure the image covers the entire background */
            background-position: center; /* Center the background image */
            background-repeat: no-repeat; /* Prevent the image from repeating */
            margin: 0; /* Remove default body margin */
            height: 100vh; /* Set height to full viewport height */
            display: flex; /* Use flexbox to center content */
            flex-direction: column; /* Stack children vertically */
            justify-content: center; /* Center content vertically */
            align-items: center; /* Center content horizontally */
            color: white; /* Optional: Set text color to white for better visibility */
        }

        .statistics-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 50px;
            animation: fallIn 1.5s ease-in-out;
        }

        @keyframes fallIn {
            0% {
                transform: translateY(-200px);
            }
            100% {
                transform: translateY(0);
            }
        }

        .statistics-box:hover {
            transform: scale(1.1); /* Zoom in the card on hover */
            background-color: rgba(231, 199, 152, 0.8); /* Change background color with transparency */
        }

        .statistics-box {
            flex: 1;
            max-width: 300px;
            background-color: rgba(202, 217, 219, 0.9); /* Semi-transparent background */
            padding: 20px;
            margin: 10px;
            box-shadow: 0 5px 10px rgba(163, 157, 157, 0.2);
            text-align: center;
            border-radius: 10px;
        }

        .statistics-box h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .statistics-box p {
            font-size: 48px;
            margin: 0;
            color: #008000; /* Green color for the number values */
        }
    </style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>
<br>
<br>
<div class="statistics-container">
    <div class="statistics-box">
        <h3>Total Customers</h3>
        <p id="anotherStatCount">${ccount}</p>
    </div>   
</div>
</body>
</html>
