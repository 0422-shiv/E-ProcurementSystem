<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>USER LOGIN</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="login/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="login/css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="login/css/iofrm-style.css">
    <link rel="stylesheet" type="text/css" href="login/css/iofrm-theme18.css">
</head>
<body>
        <div class="form-body without-side">
                <div class="website-logo">
                    <a href="">
                        <div class="">
                            <img class="logo-size" style="width:300px;margin-left:-100px ;margin-right:10px;" src="admin/assets/images/LOGO2.png" alt="">
                        </div>
                    </a>
                </div>
                <div class="row">
                    <div class="img-holder">
                        <div class="bg"></div>
                        <div class="info-holder">
                            <img src="/static/login/images/graphic3.svg" alt="">
                        </div>
                    </div>
                    <div class="form-holder">
                        <div class="form-content">
                            <div class="form-items">
                                <h3>Supplier Register</h3><br>
                            
<form:form action="/submit" method='POST' modelAttribute="sup">
<table  class="table table-bordred" style="width:80%; font-size:12px;">

<tr>
<td><b><i>Supplier Name</i></b></td>
<td><form:input path="sname"  pattern='[a-z A-Z]+' required="required"  class="form-control"  /></td></tr>

<tr><td><b><i>Password</i></b></td>
<td><form:password  path="pwd" required="required"  class="form-control" /></td></tr>


<tr><td><b><i>Company</i></b></td>
<td><form:input path="company" required="required" class="form-control" /></td></tr>

<tr><td><b><i>Address</i></b></td>
<td><form:input path="address" required="required" class="form-control" /></td></tr>



<tr><td><b><i>Mobile</i></b></td>
<td><form:input path="contact" pattern='[0-9]{10}' required="required" class="form-control" /></td></tr>







</table>
<input type='submit'>

</form:form>
<br><br><br>
${message} <div class="other-links">
                           <a href='/LogInPage'>  Click TO  Log In</a>
                                     </div>
                                         </div>
                                       
                              
                                <div class="page-links">
                                   </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <script src="/static/login/js/jquery.min.js"></script>
        <script src="/static/login/js/popper.min.js"></script>
        <script src="/static/login/js/bootstrap.min.js"></script>
        <script src="/static/login/js/main.js"></script>


</body>
</html>

