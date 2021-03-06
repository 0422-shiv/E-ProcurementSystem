<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix='form' uri="http://www.springframework.org/tags/form" %>
    
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>AdminLogIn</title>
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
                            <img class="logo-size" style="width:220px; margin-left:-60px;" src="/home/assets/img/download.jpg" alt="">
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
                                <h3>Login to Admin</h3><br>
                              <form:form action='/CheckAdminLogIn' method ='POST' modelAttribute='admin'>
                               <form:input path="adminid" class="form-control" placeholder="Admin ID"/>  
                                <form:input path="password" class="form-control" placeholder="Password" type='password'/> 
                                 
                                      <div class="form-button">
                                       <input type='submit' value="Login" class="ibtn">
                                         </div>
                                       
                               </form:form>
                             ${Message}
                              
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
    
    
    
    
    
    
    
    