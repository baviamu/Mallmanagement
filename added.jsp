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
<jsp:useBean id="ob" class="com.mypack.Addproduct">  
</jsp:useBean>  
<jsp:setProperty name="ob" property="*" />
<%  
int j=AddpdtDao.addpdt(ob);  
if(j>0)  
out.print("Hello user");  
  
%>  
<body style=background-color:#FBA196>
<h1>Product Added in your Shops</h1>
<a href="operations.jsp" class="button">BACK</a>
</body>
</html>