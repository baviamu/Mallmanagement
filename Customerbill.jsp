<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tune mall products</title>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #FA7D7D;
  color: white;
}
</style>
</head>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "mall";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<h2 align="center"><font><strong>Products Available in Mall Shops</strong></font></h2>

<body style=background-color:#F7B9B9>

<h1>Tune Mall</h1>
<h3>Product Details</h3>
<table id="customers"  >
  <tr>
    <th>id</th>
    <th>product Name</th>
    <th>manufacturer</th>
    <th>Product Description</th>
    <th>Quantity</th>
    <th>Price</th>
  </tr>
  <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM addpdt";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
  <tr>
 <td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("productname") %></td>
<td><%=resultSet.getString("manufacturer") %></td>
<td><%=resultSet.getString("productdesc") %></td>
<td><%=resultSet.getString("selectqty") %></td>
<td><%=resultSet.getString("price") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

 <a href="register.jsp"><button>Go Back</button></a>
</body>
</html>