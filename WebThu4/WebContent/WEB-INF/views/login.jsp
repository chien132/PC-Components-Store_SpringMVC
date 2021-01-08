<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Page Title - SB Admin</title>
<link href="css/styles.css" rel="stylesheet" />

</head>
<body id="homelogin">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Login</h3>
								</div>
								<div class="card-body">
									<form:form action="login.htm" modelAttribute="user">
										<div class="form-group">
											<label class="small mb-1" for="inputEmailAddress">Username</label>
											<form:input class="form-control py-4" id="inputEmailAddress"
												path="username" placeholder="Enter username" />
											<i style="color: red;"><form:errors path="username"></form:errors></i>
										</div>
										<div class="form-group">
											<label class="small mb-1" for="inputPassword">Password</label>
											<form:input class="form-control py-4" id="inputPassword"
												path="password" value="${user.password}" type="password"
												placeholder="Enter password" />
											<i style="color: red;"><form:errors path="password"></form:errors></i>

										</div>
										<div
											class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
											<a class="small" href="password.htm">Forgot Password?</a>
											<button class="btn btn-primary">Login</button>
										</div>
									</form:form>
								</div>
								<div class="card-footer text-center">
									<div class="small">
										<a href="register.htm">Need an account? Sign up!</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
</body>

</html>