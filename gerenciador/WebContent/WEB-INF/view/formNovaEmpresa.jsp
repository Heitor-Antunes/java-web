<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="linkNovaEmpresa" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulário Cadastro de Empresas</title>
</head>
<body>
	<c:import url="logout-parcial.jsp" />

	<form action="${linkNovaEmpresa}" method="post">

		<input type="hidden" name="acao" value="NovaEmpresa"> Nome: <input
			type="text" name="nome"> <br>
		<br> Data: <input type="text" name="data"> <br>
		<br> <input type="submit" value="Cadastrar">
	</form>
</body>
</html>