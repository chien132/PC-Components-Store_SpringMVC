<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<base href="${pageContext.servletContext.contextPath}/">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>XGear | PC & Laptop Gaming</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link href="css/sequence-looptheme.css" rel="stylesheet" media="all" />
<link href="css/style.css" rel="stylesheet">
<style type="text/css">
.dropbtn {
	background-color: #ffffff00;
	color: rgb(255, 255, 255);
	padding: 7px 20px;
	font-size: 15px;
	border: 2px solid #00000000;
	border-radius: 10px;
	transition: 0.2s;
	text-transform: uppercase;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: rgba(0, 0, 0, 0.548);
	min-width: 120px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
	border-radius: 10px;
}

.dropdown-content a {
	color: rgb(255, 255, 255);
	padding: 7px 20px;
	text-decoration: none;
	display: block;
	transition: 0.2s;
}

.dropdown-content a:hover {
	background-color: #ff0000;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	border: 2px solid #ff0000;
	color: #ff0000;
	font-weight: bold;
}
</style>
</head>

<body>
	<div class="header">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-2" style="padding: 0;">
					<div class="logo">
						<a href="index.htm"> <img src="images/logo.png" alt="XGear"></a>
					</div>
				</div>
				<div class="col-md-10 col-sm-10">
					<div class="header_top">
						<div class="row">

							<div class="col-md-12">
								<ul class="option">
									<li id="search" class="search">
										<form action="index.htm">
											<input class="search-submit" type="submit" value=""><input
												class="search-input" placeholder="Enter your search term..."
												type="text" value="" name="search">
										</form>
									</li>
									<li class="option-cart"><a href="cart.htm"
										class="cart-icon">cart <span class="cart_no">khong
												biet</span>
									</a>
										<ul class="option-cart-item">
											<c:forEach var="p" items="${products}">
												<li>
													<div class="cart-item">
														<div class="image">
															<img src="${p.image}">
														</div>
														<div class="item-description">
															<p class="name">${p.name}</p>
															<p>
																Description: <span class="light-red">${p.des}</span><br>Quantity:
																<span class="light-red">${p.quantity}</span>
															</p>
														</div>
														<div class="right">
															<p class="price">${p.price}</p>
															<a href="#" class="remove"><img
																src="images/remove.png" alt="remove"></a>
														</div>
													</div>
												</li>
											</c:forEach>
											<li><span class="total">Total <strong>$60.00</strong></span>
												<button class="checkout"
													onclick="location.href='checkout.htm'">CheckOut</button></li>
										</ul></li>
								</ul>
								<ul class="usermenu row " style="margin-right: 40px;"">
									<c:choose>
										<c:when test="${user==null}">

											<li><a href="register.htm" class="reg"> Register </a></li>
											<li><a href="login.htm" class="log"> Login </a></li>

										</c:when>
										<c:when test="${user!=null}">

											<li>
												<h6 style="color: cyan;">Logged in as ${user.username}
												</h6>
											</li>
											<li><a href="logout.htm" class="log"> Logout </a></li>

										</c:when>
									</c:choose>
								</ul>
							</div>
						</div>
					</div>

					<div class="header_bottom">

						<div class="col-md-12">
							<div class="dropdown">
								<button class="dropbtn mybtn">Category</button>
								<div class="dropdown-content">
									<c:forEach var="c" items="${categories}">
										<a href="brand/${c.id}.htm">${c.name}</a>
									</c:forEach>
								</div>
							</div>
							<div class="dropdown">
								<button class="dropbtn mybtn">MainBoard</button>
								<div class="dropdown-content">
									<a href="#">home</a> <a href="#">home1</a> <a href="#">home2</a>
									<a href="#">home3</a> <a href="#">home4</a>
								</div>
							</div>
							<div class="dropdown">
								<button class="dropbtn mybtn">MainBoard</button>
								<div class="dropdown-content">
									<a href="#">home</a> <a href="#">home1</a> <a href="#">home2</a>
									<a href="#">home3</a> <a href="#">home4</a>
								</div>
							</div>
							<div class="dropdown">
								<button class="dropbtn mybtn">MainBoard</button>
								<div class="dropdown-content">
									<a href="#">home</a> <a href="#">home1</a> <a href="#">home2</a>
									<a href="#">home3</a> <a href="#">home4</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--             <div class="clearfix"></div> -->
	<div class="hom-slider" style="max-height: 32vh;">
		<div class="container">
			<div id="sequence"></div>
		</div>

	</div>
</body>

</html>