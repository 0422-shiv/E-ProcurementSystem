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
<th>Tender Number</th><th>Product Name</th><th>Query</th><th>Answer Queries</th>
</tr>
<form:forEach items="${Queries}" var='P'>
<tr>

<td>${P.t_id}</td>
<td>${P.prod_name}</td>
<td>${P.query}</td>


<td><a href="/answerQuery?qid=${P.qid}" class="btn btn-info btn-xs">Answer </a></td>
</tr>
</form:forEach>
</table>
</center>
</body>
</html>