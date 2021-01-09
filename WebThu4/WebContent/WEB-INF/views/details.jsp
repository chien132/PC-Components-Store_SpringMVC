<%@ page pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

            <!DOCTYPE html>
            <html>
            <jsp:include page="header.jsp"></jsp:include>

            <body id="homeall">
                <div class="wrapper">
                    <div class="clearfix"></div>
                    <div class="container_fullwidth">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-9">
                                    <div class="products-details">
                                        <div class="preview_image">
                                            <div class="offer">
                                                -
                                                <f:formatNumber type="percent" value="${p.discount/100}" />
                                            </div>
                                            <div class="preview-small">
                                                <img style="max-height: 500px;" src="${p.image}">
                                            </div>
                                        </div>
                                        <div class="products-description">
                                            <h5 class="name">${p.name}</h5>
                                            <p>
                                                Availability: <span class=" light-red"> ${p.quantity} </span>
                                            </p>
                                            <p>${p.des}</p>
                                            <hr class="border">
                                            <div class="price">
                                                Price : <span class="new_price"> <f:formatNumber
											type="currency" currencySymbol="" maxFractionDigits="0"
											value="${p.price*(100-p.discount)}" /> <sup> đ </sup>
									</span> <span class="old_price"> ${p.price} <sup> đ </sup>
									</span>
                                            </div>
                                            <hr class="border">
                                            <div class="wided">
                                                <div class="qty">
                                                    Qty <input style="max-width: 90px;" type="number" />
                                                </div>
                                                <div class="button_group">
                                                    <button class="button">Add To Cart</button>

                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <hr class="border">
                                            <img src="images/share.png" alt="" class="pull-right">
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="tab-box">
                                        <div class="tab-content-wrap">
                                            <div class="tab-content" id="Descraption">
                                                <p>${p.des}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <jsp:include page="footer.jsp"></jsp:include>
            </body>

            </html>