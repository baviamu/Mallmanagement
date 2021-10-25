<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<body>
<h1>Product Added</h1>
<a href="register.jsp"><button style="Background-color:#F22B29;color:black;font-size:15px;
display:inline-block;cursor:pointer;border-radius:5px;height:45%;width:25%">BACK</button></a>
</body>
</html>