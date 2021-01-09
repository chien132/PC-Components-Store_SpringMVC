<%@ page pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8">
            </head>

            <body>
                <div class="row">
                    <c:forEach var="p" items="${products}">
                        <div class="col-md-4 col-sm-6">
                            <div class="products">
                                <div class="offer">
                                    -
                                    <f:formatNumber type="percent" value="${p.discount/100}" />
                                </div>
                                <div class="thumbnail">
                                    <a href="details/${p.id}.htm"> <img src="${p.image}" style="max-height: 100%">
                                    </a>
                                </div>
                                <div class="productname">${p.name}</div>
                                <h4 class="price">
                                    <f:formatNumber type="currency" currencySymbol="" maxFractionDigits="0">${p.price*(100-p.discount)}</f:formatNumber>
                                    đ
                                </h4>
                                <div class="button_group">
                                    <button class="button add-cart" type="button">Add To Cart</button>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </body>

            </html>