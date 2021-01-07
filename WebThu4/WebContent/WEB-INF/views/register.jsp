<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title>Page Title - SB Admin</title>
<link href="css/styles.css" rel="stylesheet" />

<!-- <script>
	function validateform() {
		var name = document.myform.name.value;
		var password = document.myform.password.value;

		if (name == null || name == "") {
			alert("Name can't be blank");
			return false;
		} else if (password.length < 6) {
			alert("Password must be at least 6 characters long.");
			return false;
		}
	}
</script> -->
</head>

<body class="bg-primary">
	<div style="background-image: url('images/loginbg.jpg');">
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
										<form:form action="register.htm" method="post">
											<div class="form-row">
												<div class="col-md-12">
													<div class="form-group">
														<label class="small mb-1">Username<b
															style="color: red;">*</b></label> <input
															class="form-control py-4" name="username" value="${username}" ="text"
															placeholder="Enter username" />
													</div>
												</div>
												<!-- 												<div class="col-md-6"> -->
												<!-- 													<div class="form-group"> -->
												<!-- 														<label class="small mb-1" for="inputLastName">Avatar</label> -->
												<!-- 														<input type="file" style="padding: 10px;"> -->
												<!-- 													</div> -->
												<!-- 												</div> -->
											</div>

											<div class="form-row">
												<div class="col-md-6">
													<div class="form-group">
														<label class="small mb-1">Password<b
															style="color: red;">*</b></label> <input
															class="form-control py-4" name="password" value="${password}" type="password"
															placeholder="Enter password" />
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="small mb-1" for="inputConfirmPassword">Confirm
															Password<b style="color: red;">*</b>
														</label> <input class="form-control py-4" name="cpassword" value="${cpassword}"
															type="password" placeholder="Confirm password" />
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="small mb-1">Email <i
													style="color: green;"> Optional</i>
												</label> <input class="form-control py-4" name="email"  value="${email}" type="email"
													placeholder="Enter email address" />
											</div>
											<div class="form-group">
												<label class="small mb-1"><i style="color: red;">${message}</i></label>
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