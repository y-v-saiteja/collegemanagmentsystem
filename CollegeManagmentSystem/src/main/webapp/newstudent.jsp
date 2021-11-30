<%@page import="com.coforge.training.collegemanagmentsystem.collegestudentDAO"%>
<%@page import="com.coforge.training.collegemanagmentsystem.collegestudent"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Employee</title>
</head>
<body>
<jsp:useBean id="u" class="com.coforge.training.collegemanagmentsystem.collegestudent"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
 
<%
    int i=collegestudentDAO.save(u);
    if(i>0)
    {
        response.sendRedirect("addstudentsuccess.jsp");
    }
    else {response.sendRedirect("addstudenterror.jsp");}
%>
</body>
</html>