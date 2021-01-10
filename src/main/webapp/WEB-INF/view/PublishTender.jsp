<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page import="com.example.demo.model.Tender" %>
    
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Publish Tender</title>
<link href="admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/main/css/style.css" rel="stylesheet">
</head>
<body>

	
<form:form action="/tenderSubmit" method='POST' modelAttribute="tender">

<center>
<h4><b><i>Publish Tender</i></b></h4>
<table class="table table-bordred" style="width:80%; font-size:12px;">

<tr><td>Tender Number :</td><td><form:input path="t_no" class="form-control" /></td></tr>


<tr><td>Product Name :</td><td><form:input path="prodname" class="form-control"/></td></tr>
<tr><td>Quantity :</td><td><form:input path="quantity" class="form-control"/></td></tr>
<tr><td>Publish Date :</td><td><form:input path="p_date" class="form-control"/></td></tr>
<tr><td>Closing Date :</td><td><form:input path="c_date" class="form-control"/></td></tr>

<tr><td><input type='submit' class="btn btn-info btn-xs"></td><td><input type='reset' class="btn btn-danger btn-xs"></td></tr>

</table>

</form:form>
<br><br><br>
${message}
</center>
</body>
</html>