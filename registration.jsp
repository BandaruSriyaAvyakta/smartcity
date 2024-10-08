<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Urban Compass Registration form</title>
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background-image: url("images/reform.jpg"); /* Use relative path */
            background-size: cover; /* Make the background image cover the entire viewport */
            background-position: center; /* Center the background image */
        }
        .container {
            max-width: 700px;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.8); /* Set the container background to semi-transparent white */
            padding: 25px 30px;
            border-radius: 5px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
            backdrop-filter: blur(10px); /* Add a blur effect for better visibility */
        }
        .container .title {
            font-size: 25px;
            font-weight: 500;
            position: relative;
        }
        .container .title::before {
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            height: 3px;
            width: 30px;
            border-radius: 5px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        .content form .user-details {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 20px 0 12px 0;
        }
        form .user-details .input-box {
            margin-bottom: 15px;
            width: calc(100% / 2 - 20px);
        }
        form .input-box span.details {
            display: block;
            font-weight: 500;
            margin-bottom: 5px;
        }
        .user-details .input-box input,
        .user-details .input-box select {
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            border: 1px solid #ccc;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
            background-color: rgba(255, 255, 255, 0.9); /* Set input fields to a slightly transparent white */
        }
        .user-details .input-box input:focus,
        .user-details .input-box input:valid,
        .user-details .input-box select:focus,
        .user-details .input-box select:valid {
            border-color: #9b59b6;
        }
        form .button {
            height: 45px;
            margin: 35px 0;
        }
        form .button input {
            height: 100%;
            width: 100%;
            border-radius: 5px;
            border: none;
            color: #fff;
            font-size: 18px;
            font-weight: 500;
            letter-spacing: 1px;
            cursor: pointer;
            transition: all 0.3s ease;
            background-color: #229999; /* Button color */
        }
        form .button input:hover {
            background-color: #1e7a7e; /* Optional hover color */
        }
        @media(max-width: 584px) {
            .container {
                max-width: 100%;
            }
            form .user-details .input-box {
                margin-bottom: 15px;
                width: 100%;
            }
            form .category {
                width: 100%;
            }
            .content form .user-details {
                max-height: 300px;
                overflow-y: scroll;
            }
            .user-details::-webkit-scrollbar {
                width: 5px;
            }
        }
        @media(max-width: 459px) {
            .container .content .category {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <div class="title">Registration</div>
    <div class="content">
        <form action="registercustomer" method="post">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Full Name</span>
                    <input type="text" name="name" placeholder="Enter your name" required>
                </div>
                <div class="input-box">
                    <span class="details">Username</span>
                    <input type="text" name="uname" placeholder="Enter your username" required>
                </div>
                <div class="input-box">
                    <span class="details">Email</span>
                    <input type="text" name="email" placeholder="Enter your email" required>
                </div>
                <div class="input-box">
                    <span class="details">Phone Number</span>
                    <input type="text" name="contact" placeholder="Enter your number" required>
                </div>
                <div class="input-box">
                    <span class="details">Password</span>
                    <input type="password" id="password" name="pwd" placeholder="Enter your password" required>
                </div>
                <div class="input-box">
                    <span class="details">Date Of Birth</span>
                    <input type="date" id="dob" name="dob" placeholder="Enter Date Of Birth" required>
                </div>
                <div class="input-box">
                    <span class="details">Gender</span>
                    <select id="gender" name="gender" required>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                </div>
                <div class="input-box">
                    <span class="details">Address</span>
                    <input type="text" name="address" placeholder="Enter your address" required>
                </div>
            </div>
            <div class="button">
                <input type="submit" value="Register">
            </div>
        </form>
    </div>
</div>
<script>
    document.querySelector('form').addEventListener('submit', function (e) {
        const dob = new Date(document.getElementById('dob').value);
        const today = new Date();
        today.setHours(0, 0, 0, 0); // Reset time portion to compare dates

        // Check if the date of birth is in the future.
        if (dob > today) {
            // Display the error message and prevent form submission.
            alert('Date of birth cannot be in the future.');
            e.preventDefault(); // Prevent form submission
        }
    });
</script>
</body>
</html>
