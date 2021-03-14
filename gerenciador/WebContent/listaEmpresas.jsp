<%@ page
	import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Empresas Cadastradas</title>
</head>
<body>

	<h1>Empresas Cadastradas</h1>

	<ul>
		<c:forEach items="${lista}" var="e">

			<li>${e.nome}</li>

		</c:forEach>
	</ul>

</body>
</html>