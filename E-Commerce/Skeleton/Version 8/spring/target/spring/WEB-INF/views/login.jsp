<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<div id="login-box">
				<h2>Login with Username and Password</h2>

				<c:if test="${registrationSuccess !=null}">
							${registrationSuccess }
				</c:if>
				<c:if test="${logout!=null }">
							${logout }
				</c:if>
				<form name="loginForm" method="post"
					action="j_spring_security_check">
					<c:if test="${not empty error }">
							${error }
							</c:if>
					Enter Username <input type="text" name="j_username" /> Enter
					password <input type="password" name="j_password" /> <input
						type="submit" value="sumbit" />
				</form>

			</div>
		</div>
	</div>


</body>
</html>