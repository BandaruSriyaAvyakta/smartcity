<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">

    <style>
        body {
            background-image: url('images/back.jpg'); /* Adjust the path accordingly */
            background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Do not repeat the image */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            color: black; /* Set text color to black */
            background-color: #e0f7fa; /* Light blue shade for the table */
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #2196F3; /* Darker blue for the header */
            color: #fff; /* White text for header */
        }

        tr:nth-child(even) {
            background-color: rgba(224, 241, 255, 0.8); /* Light blue shade for even rows */
        }

        tr:nth-child(odd) {
            background-color: rgba(255, 255, 255, 0.8); /* White background for odd rows */
        }

        h1 {
            color: black; /* Set the heading color to black */
        }
    </style>
</head>
<body>

    <%@ include file="adminnavbar.jsp" %>
    <header>
        <h1>Customer Details</h1>
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
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
