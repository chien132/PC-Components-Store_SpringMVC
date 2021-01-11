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
						<c:if test="${brand==null&&cate==null}">
							<div class="toolbar">

								<div class="view-mode">
									<c:if test="${view=='list'}">
										<a class="list active"> List </a>
										<a href="index.htm?page=${page}&view=grid&search=${search}"
											class="grid"> Grid </a>
									</c:if>
									<c:if test="${view=='grid'}">
										<a href="index.htm?page=${page}&view=list&search=${search}"
											class="list"> List </a>
										<a class="grid active"> Grid </a>
									</c:if>
								</div>

								<div class="pager" style="display: flex;">
									<c:if test="${page==1}">
										<button style="pointer-events: none; opacity: 0.4;">Prev</button>
									</c:if>
									<c:if test="${page>1}">
										<a href="index.htm?page=${page-1}&view=grid&search=${search}">
											<button>Prev</button>
										</a>
									</c:if>
									<h3 style="margin: 1vh;">${page}</h3>
									<c:if test="${page==maxpage}">
										<button style="pointer-events: none; opacity: 0.4;">Next</button>
									</c:if>
									<c:if test="${page<maxpage}">
										<a href="index.htm?page=${page+1}&view=grid&search=${search}">
											<button>Next</button>
										</a>
									</c:if>
									<!-- 								<a href="# "> Prev </a> <a href="# " class="active "> 1 </a> <a -->
									<!-- 									href="# "> 2 </a> <a href="# "> 3 </a> <a href="# "> Next</a> -->
								</div>

							</div>
						</c:if>
					</div>
					<!-- 					<ul id="featured "> -->
					<!-- 						<li> -->
					<!-- 							<div class="row "> -->
					<%-- 								<c:forEach var="p " items="${products} "> --%>
					<!-- 									<div class="col-md-3 col-sm-6 "> -->
					<!-- 										<div class="products "> -->
					<!-- 											<div class="offer "> -->
					<!-- 												- -->
					<%-- 												<f:formatNumber type="percent " value="${p.discount/100} " /> --%>
					<!-- 											</div> -->
					<!-- 											<div class="thumbnail "> -->
					<%-- 												<a href="details/${p.id}.htm "><img src="${p.image} " --%>
					<!-- 													style="max-height: 100% "></a> -->
					<!-- 											</div> -->
					<%-- 											<div class="productname ">${p.name}</div> --%>
					<!-- 											<h4 class="price "> -->
					<%-- 												<f:formatNumber type="currency " currencySymbol=" " --%>
					<%-- 													maxFractionDigits="0 " --%>
					<%-- 													value="${p.price*(100-p.discount)/100} " /> --%>
					<!-- 												đ -->

					<!-- 											</h4> -->
					<!-- 																						<div class="product-list-description "> -->
					<%-- 																							<span class="old_price " style=" "> ${p.price} <sup> --%>
					<!-- 																									đ </sup> -->
					<!-- 																							</span> -->
					<!-- 																						</div> -->
					<!-- 											<div class="button_group "> -->

					<%-- 												<c:choose> --%>
					<%-- 													<c:when test="${p.quantity>0}"> --%>
					<%-- 														<form action="addtocart/${p.id}/1/index.htm" method="post"> --%>
					<!-- 															<button class="button add-cart" type="submit">Add -->
					<!-- 																To Cart</button> -->
					<%-- 														</form> --%>
					<!-- 														<b -->
					<%-- 															style="color: green; font-size: 20px; font-weight: bold;">${p.quantity} --%>
					<!-- 															in stock</b> -->
					<%-- 													</c:when> --%>
					<%-- 													<c:when test="${p.quantity==0}"> --%>
					<%-- 														<form action="addtocart/${p.id}/1/index.htm" method="post"> --%>
					<!-- 															<button class="button add-cart" -->
					<!-- 																style="pointer-events: none; opacity: 0.4;" -->
					<!-- 																type="submit">Add To Cart</button> -->
					<%-- 														</form> --%>
					<!-- 														<b -->
					<!-- 															style="color: red; font-size: 20px; font-weight: bold; text-decoration: line-through;">Out -->
					<!-- 															of stock</b> -->
					<%-- 													</c:when> --%>
					<%-- 												</c:choose> --%>
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<%-- 								</c:forEach> --%>

					<!-- 							</div> -->
					<!-- 						</li> -->
					<!-- 					</ul> -->
					<c:if test="${view=='list'}">
						<jsp:include page="plist.jsp"></jsp:include>
					</c:if>
					<c:if test="${view=='grid'}">
						<jsp:include page="pgrid.jsp"></jsp:include>
					</c:if>
				</div>
				<div class="clearfix"></div>

			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>

</html>