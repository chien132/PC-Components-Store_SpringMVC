<%@ page pageEncoding="utf-8"%>
    <%@ taglib
	uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8">
            </head>

            <body>
                <ul class="products-listItem">
                    <c:forEach var="p" items="${products}">
                        <li class="products">
                            <div class="thumbnail">
                                <img src="${p.image}" alt="Product Name">
                            </div>
                            <div class="product-list-description">
                                <div class="productname">${p.name}</div>

                                <p>${p.des}</p>
                                <div class="list_bottom">
                                    <div class="price">
                                        <span class="new_price"><f:formatNumber type="currency"
									currencySymbol="" maxFractionDigits="0">
                                                                 ${p.price*(100-p.discount)/100}</f:formatNumber>
								<sup> đ </sup> </span> <span class="old_price"> ${p.price} <sup>
									đ </sup>
							</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-list-description">
                                <div class="list_bottom">
                                    <button class="button">Add To Cart</button>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </body>

            </html>