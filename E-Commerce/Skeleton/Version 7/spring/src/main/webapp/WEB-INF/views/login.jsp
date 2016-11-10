<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<div id="login-box">
				<h2>Login with Username and Password</h2>

				<c:if test="${not empty logout}">
					<div class="error" style="color: #ff0000;">${logout}</div>
				</c:if>
				<form name="loginForm"
					action="<c:url value="/j_spring_security_check" />" method="post">
					<c:if test="${not empty error}">
						<div class="error" style="color: #ff0000;">${error}</div>
					</c:if>
					<div class="form-group">
						<label for="username">User: </label> <input type="text"
							id="username" name="j_username" class="form-control" />
					</div>
					<div class="form-group">
						<label for="password">Password:</label> <input type="password"
							id="password" name="j_password" class="form-control" />
					</div>
					<input type="submit" value="Submit" class="btn btn-default">
				</form>
			</div>
		</div>
	</div>


</body>
</html>