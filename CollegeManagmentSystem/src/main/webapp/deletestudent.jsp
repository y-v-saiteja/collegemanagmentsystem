<%@page import="com.coforge.training.collegemanagmentsystem.collegestudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="com.coforge.training.collegemanagmentsystem.collegestudent"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
collegestudentDAO.deleteUser(u);
response.sendRedirect("ViewServlet");
%>

</body>
</html>