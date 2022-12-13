<jsp:directive.page contentType="text/html; charset=UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-icons.css">
<title>Facebook</title>
</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h1>Usuários</h1>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Nome</th>
							<th scope="col">Gênero</th>
							<th scope="col">E-mail</th>
							<th scope="col">Ações</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="user" items="${usuarios}">

							<tr>
								<th scope="row">${user.getId()}</th>
								<td>${user.getName()}</td>
								<td>${user.getGender()}</td>
								<td>${user.getEmail()}</td>
								<td> <a href="${pageContext.request.contextPath}/user/update?userId=${user.getId()}" class="bi bi-pencil-square"></a> </td>
							</tr>

						</c:forEach>

					</tbody>
				</table>
				
				<a class="btn btn-primary" href="user-form.jsp">Novo Usuário</a>
				
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

	<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
</body>

</html>