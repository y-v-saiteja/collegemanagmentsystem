<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students List</title>

<link rel="stylesheet" href="style/student.css">
</head>
<body>
<h1>Student Details</h1>
 
 
<table border="1" width="90%">
<tr bgcolor="green">
<th>Rollno</th><th>Name</th><th>Course</th><th>Marks</th>
<th>Edit</th><th>Delete</th>
</tr>

<c:forEach items="${elist}" var="u">
<tr bgcolor="yellow">
<td>${u.getRollno()}</td>
<td>${u.getName()}</td>
<td>${u.getCourse()}</td>
<td>${u.getMarks()}</td>

<td><a href="editform.jsp?id=${u.getRollno()}">Edit</a></td>
<td><a href="deletestudent.jsp?id=${u.getRollno()}">Delete</a></td>
</tr>
</c:forEach>
</table>
<br/><a href="addstudent.jsp">Add New Student</a>

</body>
</html>