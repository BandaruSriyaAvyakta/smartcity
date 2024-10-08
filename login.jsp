<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Urban Compass Login Form</title>
  <link rel="stylesheet" href="./style.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      font-family: "Poppins", sans-serif;
    }

    section {
      display: flex;
      justify-content: flex-end; /* Aligns the container to the right */
      align-items: center;
      min-height: 100vh;
      width: 100%;
      background-image: url('images/users5.jpg'); /* Path to your background image */
      background-size: cover;
      background-position: center;
    }

    .form-box {
      position: relative;
      width: 400px;
      height: 470px; /* Increased height to allow for more content */
      background: rgba(255, 255, 255, 0.8); /* Set a transparent white background */
      border-radius: 20px;
      display: flex;
      justify-content: center;
      align-items: center;
      backdrop-filter: blur(10px); /* Optional: Adds a blur effect to the background */
      box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2); /* Adds a subtle shadow for depth */
      margin-right: 20px; /* Optional: adds some space from the right edge */
      padding: 20px; /* Added padding for spacing */
    }

    h2 {
      font-size: 2em;
      color: black; /* Heading color */
      text-align: center;
    }

    .inputbox {
      position: relative;
      margin: 30px 0;
      width: 310px;
      border-bottom: 2px solid black; /* Border color for input boxes */
    }

    .inputbox label {
      position: absolute;
      top: 50%;
      left: 5px;
      transform: translateY(-50%);
      color: black; /* Change label color to black */
      font-size: 1em;
      pointer-events: none;
      transition: 0.5s;
    }

    input:focus ~ label,
    input:valid ~ label {
      top: -5px;
      color: #0B8494; /* Color when focused */
    }

    .inputbox input {
      width: 100%;
      height: 50px;
      background: transparent; /* Ensure input fields are also transparent */
      border: none;
      outline: none;
      font-size: 1em;
      padding: 0 35px 0 5px;
      color: black; /* Input text color */
    }

    .forget {
      display: flex;
      justify-content: space-between;
      margin: 10px 0 15px;
      font-size: 0.9em;
      color: black; /* Change to black for better visibility */
    }

    button {
      width: 100%;
      height: 40px;
      border-radius: 40px;
      background: #229799; /* Updated button color */
      border: none;
      outline: none;
      cursor: pointer;
      font-size: 1em;
      font-weight: 600;
      color: white; /* Button text color */
      transition: background 0.3s;
    }

    button:hover {
      background: #1a7a7c; /* Darker shade on hover for contrast */
    }

    .register {
      font-size: 1em;
      color: black; /* Change to black for better visibility */
      text-align: center;
      margin: 25px 0 10px;
    }

    .register p a {
      text-decoration: none;
      color: #0B8494; /* Change to your preferred color */
      font-weight: 600;
    }

    .register p a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

<section>
  <div class="form-box">
    <div class="form-value">
      <span class="blink">
        <h3 align="center" style="color: red;">${message}</h3>
      </span>
      <form action="checkcustomerlogin" method="post">
        <h2>Login</h2>
        <div class="inputbox">
          <ion-icon name="mail-outline"></ion-icon>
          <input type="email" id="email" name="email" required>
          <label for="email">Email</label>
        </div>
        <div class="inputbox">
          <ion-icon name="lock-closed-outline"></ion-icon>
          <input type="password" id="password" name="pwd" required>
          <label for="password">Password</label>
        </div>
        <div class="forget">
          <label>
            <input type="checkbox" name="remember"> Remember me
          </label>
          <label>
            <a href="forgot">Forgot password?</a>
          </label>
        </div>
        <button type="submit">Log in</button>
        <div class="register">
          <p>Don't have an account? <a href="registration">Register</a></p>
        </div>
        <div class="register">
          <p><a href="mainpage"><b>Return to Home Page</b></a></p>
        </div>
        <!-- Added link for admin login -->
        <div class="register">
          <p>Are you the admin? <a href="adminlogin.jsp">Then click here</a></p>
        </div>
      </form>
    </div>
  </div>
</section>

<script src='https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js'></script>
<script src='https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js'></script>
</body>
</html>
