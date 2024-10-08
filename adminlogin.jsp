<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/admin4.jpg'); /* Set background image */
            background-size: cover; /* Ensure the image covers the whole page */
            background-position: center; /* Center the background image */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full height */
        }

        h3 {
            text-align: center;
            margin-top: 20px;
            color: red; /* Color for error message or other headings */
        }

        h3.admin-login {
            color: darkgreen; /* Set dark green for Admin Login */
        }

        .container {
            width: 400px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* White background with transparency */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center; /* Center the text inside the container */
        }

        table {
            width: 100%;
            margin: 20px 0;
        }

        td {
            padding: 10px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <span class="blink">
        <h3>${message}</h3>
    </span>

    <!-- Admin Login heading with dark green color -->
    <h3 class="admin-login"><u>Admin Login</u></h3>

    <form method="post" action="checkadminlogin">
        <table>
            <tr>
                <td><label>Username</label></td>
                <td><input type="text" name="uname" required/></td>
            </tr>

            <tr>
                <td><label>Password</label></td>
                <td><input type="password" name="pwd" required/></td>
            </tr>

            <tr align="center">
                <td colspan="2"><input type="submit" value="Login" class="button"></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
