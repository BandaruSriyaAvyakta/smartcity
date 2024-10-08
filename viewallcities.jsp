<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script>
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[2];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }       
            }
        }
    </script>

    <style>
        body {
            background-image: url('images/back.jpg'); /* Adjust the path accordingly */
            background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Do not repeat the image */
        }

        table {
            width: auto;
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

        #myTable {
            border-collapse: collapse;
            width: 100%;
            border: 1px solid #ddd;
            font-size: 18px;
        }

        #myTable img {
            width: 100px;
            height: 100px;
        }

        #myTable td:nth-child(4), #myTable td:nth-child(5) {
            padding: 5px;
        }
        
        h1 {
            color: black; /* Set the heading color to black */
        }
    </style>
</head>
<body>

    <%@ include file="adminnavbar.jsp"%>
    <header>
        <h1>City Details</h1>
    </header>
    <div class="container">

        <table align="center" border="2" id="myTable">
            <tr class="header">
                <th>ID</th>
                <th>CITY</th>
                <th>CITY NAME</th>
                <th>IMAGE 1</th>
                <th>IMAGE 2</th>
            </tr>

            <c:forEach items="${citieslist}" var="c">
                <tr>
                    <td><c:out value="${c.id}" /></td>
                    <td><c:out value="${c.city}" /></td>
                    <td><c:out value="${c.citynamestyle}" /></td>
                    <td><img src='displaycityimage1?id=${c.id}' width="10%" height="10%"></td>
                    <td><img src='displaycityimage2?id=${c.id}' width="10%" height="10%"></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
