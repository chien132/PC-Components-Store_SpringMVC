<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title>Page Title - SB Admin</title>
<link href="css/styles.css" rel="stylesheet" />

</head>

<body class="homelogin">
	<div style="background-image: url('images/razerlogin.jpg');">
		<div id="layoutAuthentication">
			<div id="layoutAuthentication_content">
				<main>
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-7">
								<div class="card shadow-lg border-0 rounded-lg mt-5">
									<div class="card-header">
										<h3 class="text-center font-weight-light my-4">Create
											Account</h3>
									</div>
									<div class="card-body">
										<form:form action="register.htm" modelAttribute="user" method="post">
											<div class="form-row">
												<div class="col-md-12">
													<div class="form-group">
														<label class="small mb-1">Username<b
															style="color: red;">*</b></label> <form:input
															class="form-control py-4" path="username"
															value="${user.username}" type="text"
															placeholder="Enter username" />
															<i><form:errors style="color: red;font-size: 15px;" path="username" /></i>
													</div>
												</div>
											</div>
											<div class="form-row">
												<div class="col-md-12">
													<div class="form-group">
														<label class="small mb-1">Password<b
															style="color: red;">*</b></label> <form:input
															class="form-control py-4" path="password"
															value="${user.password}" type="password"
															placeholder="Enter password" />
															<form:errors style="color: red;font-size: 15px;" path="password" />
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="small mb-1">Email <i
													style="color: green;"> Optional</i>
												</label> <form:input class="form-control py-4" path="email"
													value="${user.email}" type="email"
													placeholder="Enter email address" />
													<form:errors style="color: red;font-size: 15px;" path="email" />
											</div>
											<div class="form-group">
											</div>
											<div class="form-group mt-4 mb-0">
												<button class="btn btn-primary btn-block">Create
													Account</button>
											</div>
										</form:form>
									</div>
									<div class="card-footer text-center">
										<div class="small">
											<a href="login.htm">Have an account? Go to login</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</main>
			</div>
		</div>
	</div>
</body>

</html>