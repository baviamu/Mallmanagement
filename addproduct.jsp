<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add product</title>
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
<body style=background-color:#FBA196>
<h1 style=background-color:#F85250>TUNE MALL</h1>
<h2>Add Product Details</h2>
 <form action="added.jsp" method="post">
Product name:<br/>
<input type="text" name="productname" /><br><br><br/>
Manufacturer Name:<br>
<input type="text" name="manufacturer"  /><br><br><br/>
Select quantity:<br>
<input type="number" name="selectqty" /><br><br><br/>
Product Description:<br>
<textarea rows="4" cols="50" name="productdesc" >
</textarea><br><br><br>
Price:
  <input type="number" name="price"/><br><br><br/>
<button class=button>Add Product</button> 
</form>
</body>
</html>