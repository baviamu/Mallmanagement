<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mall SHOPS</title>
<style>
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: bottom;
  width: 60%;
  text-align:center;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
 }

div.desc {
  padding: 15px;
  text-align: center;
  background-color:#FADA7F;
}
body{background-color:#F38F1D;}
</style>
</head>
<body>
<h1 style="background-color:#FFC300">Tune mall shops</h1>
<div class="gallery">
  <a target="_blank" href="index.jsp">
    <img src="mobile.jpg" alt="mobile shop" width="600" height="400">
  </a>
  <div class="desc">poorvika electronics</div>
</div>
<br>
<div class="gallery">
  <a target="_blank" href="index.jsp">
    <img src="trends.jpg" alt="Trends botique">
  </a>
  <div class="desc">Trends your fashion destination</div>
</div>
<br>
<div class="gallery">
  <a target="_blank" href="index.jsp">
    <img src="titan.jpg" alt="Titan showroom">
  </a>
  <div class="desc">Titan Be more</div>
</div>
<br>
<div class="gallery">
  <a target="_blank" href="index.jsp">
    <img src="dominos.jpg" alt="Dominos">
  </a>
  <div class="desc">Dominos make your taste buds happy</div>
  </div><br><br>
  <div class="gallery">
  <a target="_blank" href="index.jsp">
    <img src="bata.jpg" alt="Bata">
  </a>
  <div class="desc">Bata soft heals</div>
</div>
</body>
</html>