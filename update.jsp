<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "mall";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from addpdt where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<title>update mall products</title>
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
<body style=background-color:#F7B9B9>
<h1>update product</h1>
<form method="post" action="updated.jsp">
ID:
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br><br>
Product Name:<br><br>
<input type="text" name="productname" value="<%=resultSet.getString("productname") %>">
<br><br>
Manufacturer:<br><br>
<input type="text" name="manufacturer" value="<%=resultSet.getString("manufacturer") %>">
<br><br>
Product Description:<br><br>
<textarea  name="productdesc" id="productdesc"><%=resultSet.getString("productdesc") %></textarea>
<br>
Quantity:<br><br>
<input type="number" name="selectqty" value="<%=resultSet.getString("selectqty") %>">
<br><br>
Price:<br><br>
<input type="number" name="price" value="<%=resultSet.getString("price") %>"><br><br>
<button class="button">update</button>
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>