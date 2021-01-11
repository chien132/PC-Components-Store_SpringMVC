<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>

<body id="homeall">
	<div class="wrapper">

		<div class="clearfix"></div>
		<div class="container_fullwidth" style="min-height: 57vh;">
			<div class="container">
				<div class="clearfix"></div>
				<div class="featured-products">
					<div class="row">
						<h3 class="title">
							<strong>Featured </strong> Products
						</h3>
						<div class="toolbar">
							<div class="view-mode">
								<a href="productlist.htm" class="list"> List </a> <a href="#"
									class="grid active"> Grid </a>
							</div>
							<div class="pager">
								<a href="#"> Prev </a> <a href="#" class="active"> 1 </a> <a
									href="#"> 2 </a> <a href="#"> 3 </a> <a href="#"> Next</a>
							</div>
						</div>
					</div>
					<ul id="featured">
						<li>
							<div class="row">
								<c:forEach var="p" items="${products}">
									<div class="col-md-3 col-sm-6">
										<div class="products">
											<div class="offer">
												-
												<f:formatNumber type="percent" value="${p.discount/100}" />
											</div>
											<div class="thumbnail">
												<a href="details/${p.id}.htm"><img src="${p.image}"
													style="max-height: 100%"></a>
											</div>
											<div class="productname">${p.name}</div>
											<h4 class="price">
												<f:formatNumber type="currency" currencySymbol=""
													maxFractionDigits="0"
													value="${p.price*(100-p.discount)/100}" />
												đ

											</h4>
											<!-- 											<div class="product-list-description "> -->
											<%-- 												<span class="old_price" style=""> ${p.price} <sup> --%>
											<!-- 														đ </sup> -->
											<!-- 												</span> -->
											<!-- 											</div> -->
											<div class="button_group">

												<c:choose>
													<c:when test="${p.quantity>0}">
														<form action="addtocart/${p.id}/1/index.htm" method="post">
															<button class="button add-cart" type="submit">Add
																To Cart</button>
														</form>
														<b
															style="color: green; font-size: 20px; font-weight: bold;">${p.quantity}
															in stock</b>
													</c:when>
													<c:when test="${p.quantity==0}">
														<form action="addtocart/${p.id}/1/index.htm" method="post">
															<button class="button add-cart"
																style="pointer-events: none; opacity: 0.4;"
																type="submit">Add To Cart</button>
														</form>
														<b
															style="color: red; font-size: 20px; font-weight: bold; text-decoration: line-through;">Out
															of stock</b>
													</c:when>
												</c:choose>
											</div>
										</div>
									</div>
								</c:forEach>

							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>

</html>