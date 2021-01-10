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
		<div class="container_fullwidth" style="min-height: 57vh;">
			<div class="col-md-12" style="background: white;">
				<h3 class="title">Shopping Cart</h3>
				<div class="clearfix"></div>
				<table class="shop-table">
					<thead>
						<tr>
							<th>Image</th>
							<th>Details</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Price</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="bi" items="${cartitem}">
							<tr>
								<td><img src="${bi.product.image}"></td>
								<td>
									<div class="shop-details">
										<div class="productname">${bi.product.name}</div>


									</div>
								</td>
								<td>
									<h5>
										<f:formatNumber type="currency" currencySymbol=""
											maxFractionDigits="0"
											value="${bi.product.price*(100-bi.product.discount)/100}" />
										đ
									</h5>
								</td>
								<td><input type="number" min="1"
									max="${bi.product.quantity}" value="${bi.amount}" /></td>
								<td>
									<h5>
										<strong class="red"> <f:formatNumber type="currency"
												currencySymbol="" maxFractionDigits="0"
												value="${bi.product.price*(100-bi.product.discount)/100*bi.amount}" />
											đ
										</strong>
									</h5>
								</td>
								<td><a
									href="removeitem/${bi.id}/cart.htm">
										<img src="images/remove.png" alt="">
								</a></td>
							</tr>
						</c:forEach>

					</tbody>
					<tfoot>
						<tr>
							<td colspan="6">
								<button class="pull-left">Continue Shopping</button>
								<button class=" pull-right">Update Shopping Cart</button>
							</td>
						</tr>
					</tfoot>
				</table>
				<div class="clearfix"></div>

			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="clearfix"></div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>