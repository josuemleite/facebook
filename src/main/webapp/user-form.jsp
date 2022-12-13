<jsp:directive.page contentType="text/html; charset=UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<title>Insert title here</title>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>

			<div class="col-md-8">
				<h1 class="mb-3">Cadastro de Usuários</h1>

				<form action="/facebook/save" method="GET">

					<div class="mb-3">
						<label for="user_name_id" class="form-label">Nome:</label> <input
							type="text" class="form-control" id="user_name_id"
							name="user_name" value="${usuario.getName()}">
					</div>

					<div class="mb-3">
						<label for="user_name_gender" class="form-label">Sexo:</label>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="user_gender"
								id="user_gender_m_id" value="M" ${usuario.getGender()} == "M" ? checked : ""}> <label class="form-check-label"
								for="user_gender_m_id"> Masculino</label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="user_gender"
								id="user_gender_f_id" value="F" ${usuario.getGender()} == "F" ? checked : ""}> <label class="form-check-label"
								for="user_gender_f_id"> Feminino</label>
						</div>
					</div>

					<div class="mb-3">
						<label for="user_email_id" class="form-label">E-mail:</label> <input
							type="email" class="form-control" id="user_email_id" name="user_email" value="${usuario.getEmail()}">
					</div>

					<button type="submit" class="btn btn-primary">Enviar</button>
				</form>
			</div>

			<div class="col-md-2"></div>
		</div>
	</div>

	<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
</body>
</html>