<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/entrada" var="linkNovaEmpresa" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulário Altera de Empresas</title>
</head>
<body>
	<form action="${linkNovaEmpresa}" method="post">
	
		<input type="hidden" name="id" value="${empresa.id}">
		<input type="hidden" name="acao" value="alteraEmpresa">
		
		Nome: <input type="text" name="nome" value="${empresa.nome}">
		<br><br>
		
		<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" var="data"/>
		Data: <input type="text" name="data" value="${data}">
		<br><br>
		
		<input type="submit" value="Alterar">
	</form>
</body>
</html>