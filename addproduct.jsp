<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add product</title>

</head>
<body style=background-color:#FBA196>
<h1 style=background-color:#F85250>TUNE MALL</h1>
<h2>Add Product Details</h2>
<form action="added.jsp" method="post">  
Product name:<br/>
<input type="text" name="productname"/><br><br><br/>
Manufacturer Name:<br>
<input type="text" name="manufacturer"/><br><br><br/>
<label for="quantity">Select quantity:</label><br/>
  <input type="number" id="quantity" name="selectqty" min="1" max="300"/><br><br><br/>
Product Description:<br>
<textarea rows="4" cols="50" name="productdesc" form="usrform">
</textarea><br><br><br>
<label for="quantity">Price:</label><br/>
  <input type="number" name="price"/><br><br><br/>
<input type="submit" value="Add product details"/> 
</form>
</body>
</html>