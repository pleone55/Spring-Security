<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Login Page</title>
</head>
<body>
	<c:if test="${logoutMessage != null}">
		<c:out value="${logoutMessage}"></c:out>
	</c:if>
	<div id="login">
		<h3 class="text-center text-white pt-5">Login form</h3>
    	<div class="container">
    		<div id="login-row" class="row justify-content-center align-items-center">
            	<div id="login-column" class="col-md-6">
                	<div class="login-box col-md-12">
						<c:if test="${errorMessage != null}">
							<c:out value="${errorMessage}"></c:out>
						</c:if>
    					<form id="login-form" class="form" method="POST" action="/login">
    						<h3 class="text-center text-info">Login</h3>
        					<div class="form-group">
            					<label for="username" class="text-info">Username</label><br>
            					<input type="text" id="username" name="username" class="form-control"/>
        					</div>
        					<div class="form-group">
            					<label for="password" class="text-info">Password</label><br>
            					<input type="password" id="password" name="password" class="form-control"/>
        					</div>
        					<div class="form-group">
       							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
       							<input type="submit" name="submit" class="btn btn-info btn-md" value="Login"/>
       						</div>
       						<div id="register-link" class="text-right">
        						<a href="/registration" class="text-info">Register here</a>
        					</div>
						</form>
                	</div>
            	</div>
        	</div>
    	</div>
	</div>
</body>
</html>