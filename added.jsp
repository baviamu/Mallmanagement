<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Added</title>
<style>
.button {
  background-color: #E84335;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
</head>
<%@page import="com.mypack.AddpdtDao"%>  
<jsp:useBean id="obj" class="com.mypack.Addproduct">  
</jsp:useBean>  
<jsp:setProperty name="obj" property="*" />
<%  
int i=AddpdtDao.addpdt(obj);  
if(i>0)  
out.print("hello user");  
  
%>  
<body style=background-color:#FBA196>
<h1>Product Added</h1>
<a href="register.jsp" class="button">BACK</a>
</body>
</html>