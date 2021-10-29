<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>log</title>
<style>
body{background-image:url("mall4.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center; 
background-color:#9F8CBB}
.button {
  background-color:black ;
  border: none;
  color: white;
   padding: 15px 32px;
   font-sixe:20px;
  text-align: center;
  cursor: pointer;
  width:9%;
  }
</style>
</head>

<body style=text-align:center>
<h1>TUNE MALL LOGIN</h1>
<form action="register.jsp" method="post">  
Name:<input type="text" name="name"/><br><br/>  
Password:<input type="password" name="password"/><br><br/>  
Email ID:<input type="text" name="email"/><br><br/>  
<button class=button>LOGIN</button> 
  
</form>  
</body>
</html>