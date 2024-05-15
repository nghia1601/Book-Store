<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Register Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
</head>
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<a href="home"><img src="images/xitrum.png" alt="bootstrap 4 login page"></a>
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Đăng Ký</h4>
							<form method="POST" class="my-login-validation" novalidate="">
								<div class="form-group">
									<p class="text-danger"> ${mess1} </p>
									<p class="text-danger"> ${mess2} </p>
									
									<label for="username">Username</label>
									<input id="newUsername" type="text" class="form-control" name="user" required autofocus>
									<div class="invalid-feedback">
										Bạn chưa nhập Username !
									</div>
								</div>

								<div class="form-group">
									
									<label for="email">Email</label>
									<input id="newEmail" type="email" class="form-control" name="email" required data-eye>
									<div class="invalid-feedback">
										Bạn chưa nhập Email !
									</div>
								</div>
								

								<div class="form-group">
									
									<label for="password">Password</label>
									<input id="newPassword" type="password" class="form-control" name="pass" required data-eye>
									<div class="invalid-feedback">
										Bạn chưa nhập Password !
									</div>
								</div>

								<div class="form-group">
									<label for="password">Repeat Password</label>
									<input id="confirmPassword" type="password" class="form-control" name="repass" required data-eye>
									<div class="invalid-feedback">
										Bạn chưa lập lại Password !
									</div>
								</div>

								

								<div class="form-group m-0">
									<button id="register" type="submit" class="btn btn-primary btn-block">
										Đăng Ký
									</button>
								</div>
								<div class="mt-4 text-center">
									Bạn Đả Có Tài Khoản ? <a href="login">Đăng Nhập</a>
								</div>
							</form>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2023 &mdash; NHÓM 5 K15DCPM06
					</div>
				</div>
			</div>
		</div>
	</section>

	
	<script src="js/my-login.js"></script>
</body>
</html>