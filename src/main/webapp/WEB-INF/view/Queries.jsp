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

	
<form:form action="/querySubmit" method='POST' modelAttribute="Queries">
<center>
<h4><b><i>Queries</i></b></h4>

<form:hidden path="qid"/>
<table class="table table-bordred" style="width:80%; font-size:12px;">

<tr><td>Tender Number :</td><td><form:input path="T_id" class="form-control" /></td></tr>


<tr><td>Product Name :</td><td><form:input path="Prod_name" class="form-control"/></td></tr>
<tr><td>Query:</td><td><form:textarea rows="5" path="query" class="form-control"/></td></tr>



<tr><td><input type='submit' class="btn btn-info btn-xs"></td><td><input type='reset' class="btn btn-danger btn-xs"></td></tr>

</table>

</form:form>
<br><br><br>
${message}
<td><a href="/ViewQuery" class="btn btn-info btn-xs">View all Queries and Answers </a></td>
</center>
</body>
</html>