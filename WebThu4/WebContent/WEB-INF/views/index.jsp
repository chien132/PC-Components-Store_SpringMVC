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
                                <h3 class="title">
                                    <strong>Featured </strong> Products
                                </h3>
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
                                                            <a href="details/${p.id}.htm"><img src="${p.image}" style="max-height: 100%"></a>
                                                        </div>
                                                        <div class="productname">${p.name}</div>
                                                        <h4 class="price">
                                                            <f:formatNumber type="currency" currencySymbol="" maxFractionDigits="0" value="${p.price*(100-p.discount)/100}" /> đ

                                                        </h4>
                                                        <!-- 											<div class="product-list-description "> -->
                                                        <%-- 												<span class="old_price" style=""> ${p.price} <sup> --%>
                                                            <!-- 														đ </sup> -->
                                                            <!-- 												</span> -->
                                                            <!-- 											</div> -->
                                                            <div class="button_group">
                                                                <form action="addtocart/${p.id}/1.htm?ret=index" method="post">
                                                                    <button class="button add-cart" type="submit">Add
														To Cart</button>
                                                                </form><b style="color: green; font-size: 20px; font-weight: bold;">${p.quantity} in stock</b>
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