<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page import="com.example.demo.model.Queries" %>
    
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Publish Tender</title>
<link href="admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/main/css/style.css" rel="stylesheet">
</head>
<body>

<form:form action="/TenderUpdateDelete" method='POST' modelAttribute="Queries">
<form:hidden path="qid"/>

<center>
<h4><b><i>Answer  Query</i></b></h4>

<table class="table table-bordred" style="width:80%; font-size:12px;">

<tr><td>Tender Number :</td><td><form:input path="T_id" value="${Queries.t_id }" readonly= "true" class="form-control"/></td></tr>


<tr><td>Product Name :</td><td><form:input path="Prod_name" value="${Queries.prod_name}" readonly= "true" class="form-control"/></td></tr>
<tr><td>Query:</td><td><form:input path="query" value="${Queries.query}" readonly= "true" class="form-control"/></td></tr>
</table>



<table class="table table-bordred" style="width:80%; font-size:12px;">
<tr><td>Answer:</td><td><form:textarea rows="5" path="Answer" class="form-control"/></td></tr>


<tr><td><input type='submit' class="btn btn-info btn-xs"></td><td><input type='reset' class="btn btn-danger btn-xs"></td></tr>

</table>

</form:form>

</center>
</body>
</html>