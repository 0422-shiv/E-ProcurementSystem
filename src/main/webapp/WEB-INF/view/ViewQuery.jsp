<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix='form' uri="http://java.sun.com/jsp/jstl/core" %>
  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Queries</title>
<link href="admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/main/css/style.css" rel="stylesheet">
</head>
<body>
<center>
<h4><b><i>View all Queries and Answers</i></b></h4><br><br>
<table class="table table-bordred" style="width:80%; font-size:12px;">
<tr>
<th><h6>Tender Number</h6></th><th><h6>Product Name</h6></th><th><h6>Query</h6></th><th><h6>Answer </h6></th>
</tr>
<form:forEach items="${Queries}" var='P'>
<tr>

<td>${P.t_id}</td>
<td>${P.prod_name}</td>
<td>${P.query}</td>
<td>${P.answer}</td>


</tr>
</form:forEach>
</table>
</center>
</body>
</html>