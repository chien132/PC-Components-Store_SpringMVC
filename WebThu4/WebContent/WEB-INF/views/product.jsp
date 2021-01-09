<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<html>
<%--         <base href="${pageContext.servletContext.contextPath}/"> --%>
<jsp:include page="header.jsp"></jsp:include>
<body id="homeall">
	<div class="wrapper">
		<div class="clearfix"></div>
		<div class="container_fullwidth">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="category leftbar">
							<h3 class="title">Categories</h3>
							<ul>
								<li><a href="#"> Men </a></li>
								<li><a href="#"> Women </a></li>
								<li><a href="#"> Salon </a></li>
								<li><a href="#"> New Trend </a></li>
								<li><a href="#"> Living room </a></li>
								<li><a href="#"> Bed room </a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
						<div class="branch leftbar">
							<h3 class="title">Branch</h3>
							<ul>
								<li><a href="#"> New </a></li>
								<li><a href="#"> Sofa </a></li>
								<li><a href="#"> Salon </a></li>
								<li><a href="#"> New Trend </a></li>
								<li><a href="#"> Living room </a></li>
								<li><a href="#"> Bed room </a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
						<div class="price-filter leftbar">
							<h3 class="title">Price</h3>
							<form class="pricing">
								<label> $ <input type="number">
								</label> <span class="separate"> - </span> <label> $ <input
									type="number">
								</label> <input type="submit" value="Go">
							</form>
						</div>
						<div class="clearfix"></div>
						<div class="clolr-filter leftbar">
							<h3 class="title">Color</h3>
							<ul>
								<li><a href="#" class="red-bg"> light red </a></li>
								<li><a href="#" class=" yellow-bg"> yellow" </a></li>
								<li><a href="#" class="black-bg "> black </a></li>
								<li><a href="#" class="pink-bg"> pink </a></li>
								<li><a href="#" class="dkpink-bg"> dkpink </a></li>
								<li><a href="#" class="chocolate-bg"> chocolate </a></li>
								<li><a href="#" class="orange-bg"> orange-bg </a></li>
								<li><a href="#" class="off-white-bg"> off-white </a></li>
								<li><a href="#" class="extra-lightgreen-bg">
										extra-lightgreen </a></li>
								<li><a href="#" class="lightgreen-bg"> lightgreen </a></li>
								<li><a href="#" class="biscuit-bg"> biscuit </a></li>
								<li><a href="#" class="chocolatelight-bg">
										chocolatelight </a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
						<div class="product-tag leftbar">
							<h3 class="title">
								Products <strong> Tags </strong>
							</h3>
							<ul>
								<li><a href="#"> Lincoln us </a></li>
								<li><a href="#"> SDress for Girl </a></li>
								<li><a href="#"> Corner </a></li>
								<li><a href="#"> Window </a></li>
								<li><a href="#"> PG </a></li>
								<li><a href="#"> Oscar </a></li>
								<li><a href="#"> Bath room </a></li>
								<li><a href="#"> PSD </a></li>
							</ul>
						</div>
						
						<div class="clearfix"></div>
						<div class="leftbanner">
							<img src="images/banner-small-01.png" alt="">
						</div>
					</div>
					<div class="col-md-9">
						<div class="banner">
							<div class="bannerslide" id="bannerslide">
								<ul class="slides">
									<li><a href="#"> <img src="images/banner-01.jpg"
											alt="" />
									</a></li>
									<li><a href="#"> <img src="images/banner-02.jpg"
											alt="" />
									</a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="products-grid">
							<div class="toolbar">
								<div class="sorter">
									<div class="view-mode">
										<a href="productlist.htm" class="list"> List </a> <a href="#"
											class="grid active"> Grid </a>
									</div>
									<div class="sort-by">
										Sort by : <select name="">
											<option value="Default" selected>Default</option>
											<option value="Name">Name</option>
											<option value="Price">Price</option>
										</select>
									</div>
									<div class="limiter">
										Show : <select name="">
											<option value="3" selected>3</option>
											<option value="6">6</option>
											<option value="9">9</option>
										</select>
									</div>
								</div>
								<div class="pager">
									<a href="#" class="prev-page"> <i class="fa fa-angle-left">
									</i>
									</a> <a href="#" class="active"> 1 </a> <a href="#"> 2 </a> <a
										href="#"> 3 </a> <a href="#" class="next-page"> <i
										class="fa fa-angle-right"> </i>
									</a>
								</div>
							</div>
							<div class="clearfix"></div>

							<jsp:include page="p${type}.jsp"></jsp:include>
							<div class="clearfix"></div>
							<div class="toolbar">
								<div class="sorter bottom">
									<div class="view-mode">
										<a href="productlist.htm" class="list"> List </a> <a href="#"
											class="grid active"> Grid </a>
									</div>
									<div class="sort-by">
										Sort by : <select name="">
											<option value="Default" selected>Default</option>
											<option value="Name">Name</option>
											<option value="
<strong>
#
</strong>
">Price</option>
										</select>
									</div>
									<div class="limiter">
										Show : <select name="">
											<option value="3" selected>3</option>
											<option value="6">6</option>
											<option value="9">9</option>
										</select>
									</div>
								</div>
								<div class="pager">
									<a href="#" class="prev-page"> <i class="fa fa-angle-left">
									</i>
									</a> <a href="#" class="active"> 1 </a> <a href="#"> 2 </a> <a
										href="#"> 3 </a> <a href="#" class="next-page"> <i
										class="fa fa-angle-right"> </i>
									</a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>

</html>