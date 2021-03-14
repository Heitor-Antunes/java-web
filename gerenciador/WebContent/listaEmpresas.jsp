<%@ page
	import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Empresas Cadastradas</title>
</head>
<body>

	<h1>Empresas Cadastradas</h1>

	<ul>
		<c:forEach items="${lista}" var="empresa">

			<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" var="data"/>
			<li>${empresa.nome} - ${data}</li>

		</c:forEach>
	</ul>

</body>
</html>