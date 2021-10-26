<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mall?autoReconnect=true&useSSL=false";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
String productname=request.getParameter("productname");
String manufacturer=request.getParameter("manufacturer");
String productdesc=request.getParameter("productdesc");
String selectqty=request.getParameter("selectqty");
String price=request.getParameter("price");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int productID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update addpdt set id=?,productname=?,manufacturer=?,productdesc=?,selectqty=?,price=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, productname);
ps.setString(3, manufacturer);
ps.setString(4, productdesc);
ps.setString(5, selectqty);
ps.setString(6, price);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Product Updated Successfully");
}
else
{
out.print("There is a problem in updating Product.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updated Items in your shops</title><style>
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
}</style>
</head>
<body style=background-color:#FF9F97>
<a href="newupdate.jsp" class="button">Back</a>
</body>
</html>