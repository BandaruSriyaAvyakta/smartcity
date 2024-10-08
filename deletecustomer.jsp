<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">

    <style>
        /* Style for the body */
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/back.jpg'); /* New background image */
            background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Do not repeat the image */
            color: #fff; /* Text color */
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            padding: 20px 0;
            color: black; /* Black color for heading */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            color: black; /* Text color for table */
            background-color: rgba(0, 0, 255, 0.1); /* Light blue with transparency */
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: rgba(0, 0, 139, 0.8); /* Dark blue header */
            color: #fff; /* White text for header */
        }

        tr:nth-child(even) {
            background-color: rgba(173, 216, 230, 0.8); /* Light blue for even rows */
        }

        h3 {
            text-align: center;
            margin: 20px 0;
        }

        .btn-delete {
            background-color: #FF4500;
            color: #fff;
            padding: 5px 10px;
            text-decoration: none;
            border-radius: 5px;
        }

        .btn-delete:hover {
            background-color: #FF6347;
        }

        /* Navigation bar styles */
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            background-color: rgba(34, 34, 34, 0.8); /* Semi-transparent dark background */
        }

        li {
            margin: 0;
            padding: 0;
        }

        li a {
            display: block;
            color: #fff;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #555;
        }
    </style>
</head>
<body>

    <%@ include file="adminnavbar.jsp" %>
    <header>
        <h1>Delete Customer</h1>
    </header>
    <div class="container">
        <table>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>UserName</th>
                <th>Email</th>
                <th>Gender</th>
                <th>DOB</th>
                <th>Address</th>
                <th>Action</th>
            </tr>

            <c:forEach items="${customerdata}" var="c">
                <tr>
                    <td><c:out value="${c.id}" /></td>
                    <td><c:out value="${c.name}" /></td>
                    <td><c:out value="${c.username}" /></td>
                    <td><c:out value="${c.email}" /></td>
                    <td><c:out value="${c.gender}" /></td>
                    <td><c:out value="${c.dob}" /></td>
                    <td><c:out value="${c.address}" /></td>
                    <td>
                        <a href='<c:url value="delete/${c.id}"></c:url>' class="btn-delete">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
