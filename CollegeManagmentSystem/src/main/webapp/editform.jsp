<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.coforge.training.collegemanagmentsystem.collegestudent,
           com.coforge.training.collegemanagmentsystem.collegestudentDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student</title>
<link rel="stylesheet" href="style/employee.css">
</head>
<body>
<%
String rollno=request.getParameter("rollno");
collegestudent u=collegestudentDAO.getRecordById(Integer.parseInt(rollno));
%>
<h1>Edit Employee Details</h1>
<form action="UpdateServlet" method="post">
<input type="hidden" name="rollno" value="<%=u.getRollno() %>"/>
<table>
<tr><td>Name:</td><td>
<input type="text" name="name" value="<%= u.getName()%>"/></td></tr>

<tr><td>marks:</td><td>
<input type="marks" name="marks" value="<%= u.getMarks()%>"/></td></tr>
 

<tr><td>Course:</td><td>
<select name="country">
<option>CSE</option>
<option>MECH</option>
<option>CIVIL</option>
<option>EEE</option>
<option>Other</option>
</select>
</td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Student"/></td></tr>
</table>
</form>
</body>
</html>