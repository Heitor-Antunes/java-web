<%@ page
	import="java.util.List, br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/novaEmpresa" var="linkNovaEmpresa"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Empresas Cadastradas</title>
</head>
<body>

	<c:if test="${not empty empresa}">
		<p>Empresa ${empresa} cadastrada com sucesso!</p>
	</c:if>

	<h1>Empresas Cadastradas</h1>

	<ul>
		<c:forEach items="${lista}" var="empresa">

			<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"
				var="data" />
			<li>${empresa.nome} - ${data} 
				<a href="/gerenciador/entrada?acao=mostraEmpresa&id=${empresa.id}">Edita</a>
				<a href="/gerenciador/entrada?acao=removeEmpresa&id=${empresa.id}">Remove</a>
			</li>

		</c:forEach>
	</ul>
	
	<a href="formNovaEmpresa.jsp">Cadastrar Empresa</a>

</body>
</html>