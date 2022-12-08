<jsp:directive.page contentType="text/html; charset=UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
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
							<th scope="col">#</th>
							<th scope="col">First</th>
							<th scope="col">Last</th>
							<th scope="col">Handle</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="user" items="${usuarios}">

							<tr>
								<th scope="row">${user.getId()}</th>
								<td>${user.getName()}</td>
								<td>${user.getGender()}</td>
								<td>${user.getEmail()}</td>
							</tr>

						</c:forEach>

					</tbody>
				</table>
				
				<a class="btn btn-primary" href="user_form.html">Novo Usuário</a>
				
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

	<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
</body>

</html>