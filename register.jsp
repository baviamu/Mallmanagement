<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registered</title>
<style>
.button {
  background-color:black ;
  border: none;
  color: white;
   padding: 15px 32px;
   font-sixe:20px;
  text-align: center;
  text-decoration:none;
  cursor: pointer;
  width:9%;
  }
</style>
</head>
<%@page import="com.mypack.UserDao"%>  
<jsp:useBean id="obj" class="com.mypack.User">  
</jsp:useBean>  
<jsp:setProperty name="obj" property="*" />  
 <%  
int i=UserDao.register(obj);  
if(i>0)  
out.print("WELCOME");  
 %>  
<body style=background-color:#9F8CBB>
<h1>LOGIN SUCCESSFULLY</h1>
<a href="operations.jsp" class="button">Go to Shop details</a>
</body>
</html>