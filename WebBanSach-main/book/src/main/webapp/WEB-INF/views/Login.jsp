<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Login Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
</head>

<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<form action="login" method="post" class="login-form">

				<div class="row justify-content-md-center h-100">
					<div class="card-wrapper">
						<div class="brand">
							<a href="home"><img src="images/xitrum.png" alt="logo"></a>
						</div>
						<div class="card fat">
							<div class="card-body">
								<h4 class="card-title">Đăng Nhập</h4>
								<form  action="login" method="POST" class="my-login-validation" novalidate="">
									
									<div class="form-group">
										<p class="text-danger"> ${mess} </p>
								
										<label for="username">Username</label>
										<input id="username" type="username" class="form-control" name="user" value="${cookie.user.value}" required autofocus>
										<div class="invalid-feedback">
											Bạn chưa nhập Username
										</div>
									</div>

									<div class="form-group">
										<label for="password">Password
											
										</label>
										<input id="password" type="password" class="form-control" name="pass" value="${cookie.pass.value}" required data-eye>
										<div class="invalid-feedback">
											Bạn chưa nhập Password!
										</div>
									</div>


									<div class="form-group">
										<input type="checkbox" ${(cookie.rem.value eq 'ON')? "checked":""} name="rem" value="ON"> Remember Me
									</div>

									

									<div class="form-group m-0">
										<button id="login" type="submit" class="btn btn-primary btn-block">
											Đăng Nhập
										</button>
									</div>
									<div class="mt-4 text-center">
										Bạn Chưa Có Tài Khoản? <a href="register">Đăng Ký</a>
									</div>
								</form>
							</div>
						</div>
						<div class="footer">
							Copyright &copy; 2023 &mdash; NHÓM 5 K15DCPM06
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>

	
	<script src="js/my-login.js"></script>
</body>
</html>
