<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
         <%@ page import="com.example.demo.model.Bids" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/main/css/style.css" rel="stylesheet">
<title>bids</title>
</head>
<body>




<form:form action="/BidsSubmit" method='POST' modelAttribute="bids">
<center>
<h4><b><i>Apply For Tender</i></b></h4>
<table class="table table-bordred" style="width:80%; font-size:12px;">
<tr><td>Tender Number :</td><td><form:input path="t" class="form-control"/></td></tr>
<tr><td>Product Name :</td><td><form:input path="prodname" class="form-control"/></td></tr>
<tr><td>User Name :</td><td><form:input path="username" class="form-control"/></td></tr>
<tr><td>Quoted_value :</td><td><form:input path="Quoted_value" class="form-control"/></td></tr>
<tr><td>detail:</td><td><form:textarea rows="5" path="detail" class="form-control"/></td></tr>

<tr><td><input type='submit' class="btn btn-info btn-xs"></td><td><input type='reset' class="btn btn-danger btn-xs"></td></tr>

</table>

</form:form>
<br><br><br>
${message}

</center>
</body>
</html>