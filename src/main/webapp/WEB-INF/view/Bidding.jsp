<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix='form' uri="http://java.sun.com/jsp/jstl/core" %>
  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link href="admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/main/css/style.css" rel="stylesheet">
</head>
<body>
<center>
<table class="table table-bordred" style="width:80%; font-size:12px;">
<tr>
<th>Tender Number</th><th>Product Name</th><th>User Name</th><th>Quoted value</th><th>Details</th><th>Purchase</th>
</tr>
<form:forEach items="${bids}" var='P'>
<tr>

<td>${P.t}</td>
<td>${P.prodname}</td>
<td>${P.username}</td>
<td>${P.Quoted_value}</td>
<td>${P.detail}</td>

<td><a href="/bids" class="btn btn-info btn-xs">Apply</a></td>
</tr>
</form:forEach>
</table>
</center>
</body>
</html>