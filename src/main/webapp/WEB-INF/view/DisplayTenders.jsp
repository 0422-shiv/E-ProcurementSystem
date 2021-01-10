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
<th>Tender Number</th><th>Product Name</th><th>Quantity</th><th>Publish Date</th><th>Closing Date</th><th>Update/Delete</th>
</tr>
<form:forEach items="${ten}" var='P'>
<tr>

<td>${P.t_no}</td>
<td>${P.prodname}</td>
<td>${P.quantity}</td>
<td>${P.p_date}</td>
<td>${P.c_date}</td>

<td><a href="/updateTender?t_no=${P.t_no}" class="btn btn-info btn-xs">Update/Delete</a></td>
</tr>
</form:forEach>
</table>
</center>
</body>
</html>