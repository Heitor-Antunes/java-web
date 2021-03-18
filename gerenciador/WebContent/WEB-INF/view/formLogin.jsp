<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:url value="/entrada" var="link" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tela de Login</title>
</head>
<body>

	<form action="${link}" method="post">
	
		Login <input type="text" name="login">
		Senha <input type="password" name="senha">
		
		<input type="submit" name="acao" value="Login">

	</form>
</body>
</html>