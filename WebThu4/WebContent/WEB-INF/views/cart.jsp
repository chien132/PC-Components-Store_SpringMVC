<%@ page pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
            <meta name="description" content="">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="shortcut icon" href="images/favicon.png">
            <title>XGear | PC & Laptop Gaming</title>
            <link href="css/bootstrap.css" rel="stylesheet">
            <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
            <link href="css/font-awesome.min.css" rel="stylesheet">
            <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
            <link href="css/style.css" rel="stylesheet" type="text/css">
        </head>

        <body>
            <div class="wrapper">
                <div class="header">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-2 col-sm-2">
                                <div class="logo">
                                    <a href="index.htm">
                                        <img src="images/logo.png" alt="XGear"></a>
                                </div>
                            </div>
                            <div class="col-md-10 col-sm-10">
                                <div class="header_top">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <ul class="usermenu">
                                                <c:choose>
                                                    <c:when test="${user==null}">
                                                        <li><a href="login.htm" class="log"> Login </a></li>
                                                        <li><a href="register.htm" class="reg"> Register </a></li>
                                                    </c:when>
                                                    <c:when test="${user!=null}">
                                                        <li><a href="logout.htm" class="log"> Logout </a></li>
                                                    </c:when>
                                                </c:choose>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix">
                                </div>
                                <div class="header_bottom">
                                    <ul class="option">
                                        <li id="search" class="search">
                                            <form>
                                                <input class="search-submit" type="submit" value="">
                                                <input class="search-input" placeholder="Enter your search term..." type="text" value="" name="search">
                                            </form>
                                        </li>
                                        <li class="option-cart">
                                            <a href="#" class="cart-icon">
                      cart 
                      <span class="cart_no">
                        02
                      </span>
                    </a>
                                            <ul class="option-cart-item">
                                                <li>
                                                    <div class="cart-item">
                                                        <div class="image">
                                                            <img src="images/products/thum/products-01.png" alt="">
                                                        </div>
                                                        <div class="item-description">
                                                            <p class="name">
                                                                Lincoln chair
                                                            </p>
                                                            <p>
                                                                Size:
                                                                <span class="light-red">
                                One size
                              </span>
                                                                <br> Quantity:
                                                                <span class="light-red">
                                01
                              </span>
                                                            </p>
                                                        </div>
                                                        <div class="right">
                                                            <p class="price">
                                                                $30.00
                                                            </p>
                                                            <a href="#" class="remove">
                                                                <img src="images/remove.png" alt="remove">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="cart-item">
                                                        <div class="image">
                                                            <img src="images/products/thum/products-02.png" alt="">
                                                        </div>
                                                        <div class="item-description">
                                                            <p class="name">
                                                                Lincoln chair
                                                            </p>
                                                            <p>
                                                                Size:
                                                                <span class="light-red">
                                One size
                              </span>
                                                                <br> Quantity:
                                                                <span class="light-red">
                                01
                              </span>
                                                            </p>
                                                        </div>
                                                        <div class="right">
                                                            <p class="price">
                                                                $30.00
                                                            </p>
                                                            <a href="#" class="remove">
                                                                <img src="images/remove.png" alt="remove">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <span class="total">
                          Total 
                          <strong>
                            $60.00
                          </strong>
                        </span>
                                                    <button class="checkout" onClick="location.href='checkout.htm'">
                          CheckOut
                        </button>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">
                      Toggle navigation
                    </span>
                    <span class="icon-bar">
                    </span>
                    <span class="icon-bar">
                    </span>
                    <span class="icon-bar">
                    </span>
                  </button>
                                    </div>
                                    <div class="navbar-collapse collapse">
                                        <ul class="nav navbar-nav">
                                            <li class="active dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Home
                      </a>
                                                <div class="dropdown-menu">
                                                    <ul class="mega-menu-links">
                                                        <li>
                                                            <a href="index.htm">
                              home
                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="home2.htm">
                              home2
                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="home3.htm">
                              home3
                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="productlist.htm">
                              productlist
                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="productgrid.htm">
                              productgrid
                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="details/${p.id}.htm">
                              Details
                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="cart.htm">
                              Cart
                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="checkout.htm">
                              CheckOut
                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="checkout2.htm">
                              CheckOut2
                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="contact.htm">
                              contact
                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li>
                                                <a href="productgrid.htm">
                        men
                      </a>
                                            </li>
                                            <li>
                                                <a href="productlist.htm">
                        women
                      </a>
                                            </li>
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Fashion
                      </a>
                                                <div class="dropdown-menu mega-menu">
                                                    <div class="row">
                                                        <div class="col-md-6 col-sm-6">
                                                            <ul class="mega-menu-links">
                                                                <li>
                                                                    <a href="productgrid.htm">
                                  New Collection
                                </a>
                                                                </li>
                                                                <li>
                                                                    <a href="productgrid.htm">
                                  Shirts & tops
                                </a>
                                                                </li>
                                                                <li>
                                                                    <a href="productgrid.htm">
                                  Laptop & Brie
                                </a>
                                                                </li>
                                                                <li>
                                                                    <a href="productgrid.htm">
                                  Dresses
                                </a>
                                                                </li>
                                                                <li>
                                                                    <a href="productgrid.htm">
                                  Blazers & Jackets
                                </a>
                                                                </li>
                                                                <li>
                                                                    <a href="productgrid.htm">
                                  Shoulder Bags
                                </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-md-6 col-sm-6">
                                                            <ul class="mega-menu-links">
                                                                <li>
                                                                    <a href="productgrid.htm">
                                  New Collection
                                </a>
                                                                </li>
                                                                <li>
                                                                    <a href="productgrid.htm">
                                  Shirts & tops
                                </a>
                                                                </li>
                                                                <li>
                                                                    <a href="productgrid.htm">
                                  Laptop & Brie
                                </a>
                                                                </li>
                                                                <li>
                                                                    <a href="productgrid.htm">
                                  Dresses
                                </a>
                                                                </li>
                                                                <li>
                                                                    <a href="productgrid.htm">
                                  Blazers & Jackets
                                </a>
                                                                </li>
                                                                <li>
                                                                    <a href="productgrid.htm">
                                  Shoulder Bags
                                </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <a href="productgrid.htm">
                        gift
                      </a>
                                            </li>
                                            <li>
                                                <a href="productgrid.htm">
                        kids
                      </a>
                                            </li>
                                            <li>
                                                <a href="productgrid.htm">
                        blog
                      </a>
                                            </li>
                                            <li>
                                                <a href="productgrid.htm">
                        jewelry
                      </a>
                                            </li>
                                            <li>
                                                <a href="contact.htm">
                        contact us
                      </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>
                    <div class="page-index">
                        <div class="container">
                            <p>
                                Home - Shopping Cart
                            </p>
                        </div>
                    </div>
                </div>
                <div class="clearfix">
                </div>
                <div class="container_fullwidth">
                    <div class="container shopping-cart">
                        <div class="row">
                            <div class="col-md-12">
                                <h3 class="title">
                                    Shopping Cart
                                </h3>
                                <div class="clearfix">
                                </div>
                                <table class="shop-table">
                                    <thead>
                                        <tr>
                                            <th>
                                                Image
                                            </th>
                                            <th>
                                                Dtails
                                            </th>
                                            <th>
                                                Price
                                            </th>
                                            <th>
                                                Quantity
                                            </th>
                                            <th>
                                                Price
                                            </th>
                                            <th>
                                                Delete
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <img src="images/products/small/products-06.png" alt="">
                                            </td>
                                            <td>
                                                <div class="shop-details">
                                                    <div class="productname">
                                                        Lincoln Corner Unit Products
                                                    </div>
                                                    <p>
                                                        <img alt="" src="images/star.png">
                                                        <a class="review_num" href="#">
                            02 Review(s)
                          </a>
                                                    </p>
                                                    <div class="color-choser">
                                                        <span class="text">
                            Product Color : 
                          </span>
                                                        <ul>
                                                            <li>
                                                                <a class="black-bg " href="#">
                                black
                              </a>
                                                            </li>
                                                            <li>
                                                                <a class="red-bg" href="#">
                                light red
                              </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <p>
                                                        Product Code :
                                                        <strong class="pcode">
                            Dress 120
                          </strong>
                                                    </p>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>
                                                    $200.00
                                                </h5>
                                            </td>
                                            <td>
                                                <select name="">
                        <option selected value="1">
                          1
                        </option>
                        <option value="1">
                          2
                        </option>
                        <option value="1">
                          3
                        </option>
                      </select>
                                            </td>
                                            <td>
                                                <h5>
                                                    <strong class="red">
                          $200.00
                        </strong>
                                                </h5>
                                            </td>
                                            <td>
                                                <a href="#">
                                                    <img src="images/remove.png" alt="">
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="images/products/small/products-02.png" alt="">
                                            </td>
                                            <td>
                                                <div class="shop-details">
                                                    <div class="productname">
                                                        Lincoln Corner Unit Products
                                                    </div>
                                                    <p>
                                                        <img alt="" src="images/star.png">
                                                        <a class="review_num" href="#">
                            02 Review(s)
                          </a>
                                                    </p>
                                                    <div class="color-choser">
                                                        <span class="text">
                            Product Color : 
                          </span>
                                                        <ul>
                                                            <li>
                                                                <a class="gray-bg" href="#">
                                pink
                              </a>
                                                            </li>
                                                            <li>
                                                                <a class="black-bg " href="#">
                                black
                              </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <p>
                                                        Product Code :
                                                        <strong class="pcode">
                            Dress 132
                          </strong>
                                                    </p>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>
                                                    $200.00
                                                </h5>
                                            </td>
                                            <td>
                                                <select name="">
                        <option selected value="1">
                          1
                        </option>
                        <option value="2">
                          2
                        </option>
                        <option value="3">
                          3
                        </option>
                      </select>
                                            </td>
                                            <td>
                                                <h5>
                                                    <strong class="red">
                          $200.00
                        </strong>
                                                </h5>
                                            </td>
                                            <td>
                                                <a href="#">
                                                    <img src="images/remove.png" alt="">
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="images/products/small/products-05.png" alt="">
                                            </td>
                                            <td>
                                                <div class="shop-details">
                                                    <div class="productname">
                                                        Lincoln Corner Unit Products
                                                    </div>
                                                    <p>
                                                        <img alt="" src="images/star.png">
                                                        <a class="review_num" href="#">
                            02 Review(s)
                          </a>
                                                    </p>
                                                    <div class="color-choser">
                                                        <span class="text">
                            Product Color : 
                          </span>
                                                        <ul>
                                                            <li>
                                                                <a class="red-bg" href="#">
                                light red
                              </a>
                                                            </li>
                                                            <li>
                                                                <a class=" yellow-bg" href="#">
                                yellow"
                              </a>
                                                            </li>
                                                            <li>
                                                                <a class="black-bg " href="#">
                                black
                              </a>
                                                            </li>
                                                            <li>
                                                                <a class="pink-bg" href="#">
                                pink
                              </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <p>
                                                        Product Code :
                                                        <strong class="pcode">
                            Dress 050
                          </strong>
                                                    </p>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>
                                                    $200.00
                                                </h5>
                                            </td>
                                            <td>
                                                <select name="">
                        <option selected value="1">
                          1
                        </option>
                        <option value="2">
                          2
                        </option>
                        <option value="3">
                          3
                        </option>
                      </select>
                                            </td>
                                            <td>
                                                <h5>
                                                    <strong class="red">
                          $200.00
                        </strong>
                                                </h5>
                                            </td>
                                            <td>
                                                <a href="#">
                                                    <img src="images/remove.png" alt="">
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="6">
                                                <button class="pull-left">
                        Continue Shopping
                      </button>
                                                <button class=" pull-right">
                        Update Shopping Cart
                      </button>
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                                <div class="clearfix">
                                </div>
                                <div class="row">
                                    <div class="col-md-4 col-sm-6">
                                        <div class="shippingbox">
                                            <h5>
                                                Estimate Shipping And Tax
                                            </h5>
                                            <form>
                                                <label>
                        Select Country *
                      </label>
                                                <select class="">
                        <option value="AL">
                          Alabama
                        </option>
                        <option value="AK">
                          Alaska
                        </option>
                        <option value="AZ">
                          Arizona
                        </option>
                        <option value="AR">
                          Arkansas
                        </option>
                        <option value="CA">
                          California
                        </option>
                        <option value="CO">
                          Colorado
                        </option>
                        <option value="CT">
                          Connecticut
                        </option>
                        <option value="DE">
                          Delaware
                        </option>
                        <option value="DC">
                          District Of Columbia
                        </option>
                        <option value="FL">
                          Florida
                        </option>
                        <option value="GA">
                          Georgia
                        </option>
                        <option value="HI">
                          Hawaii
                        </option>
                        <option value="ID">
                          Idaho
                        </option>
                        <option selected="" value="IL">
                          Illinois
                        </option>
                        <option value="IN">
                          Indiana
                        </option>
                        <option value="IA">
                          Iowa
                        </option>
                        <option value="KS">
                          Kansas
                        </option>
                        <option value="KY">
                          Kentucky
                        </option>
                        <option value="LA">
                          Louisiana
                        </option>
                        <option value="ME">
                          Maine
                        </option>
                        <option value="MD">
                          Maryland
                        </option>
                        <option value="MA">
                          Massachusetts
                        </option>
                        <option value="MI">
                          Michigan
                        </option>
                        <option value="MN">
                          Minnesota
                        </option>
                        <option value="MS">
                          Mississippi
                        </option>
                        <option value="MO">
                          Missouri
                        </option>
                        <option value="MT">
                          Montana
                        </option>
                        <option value="NE">
                          Nebraska
                        </option>
                        <option value="NV">
                          Nevada
                        </option>
                        <option value="NH">
                          New Hampshire
                        </option>
                        <option value="NJ">
                          New Jersey
                        </option>
                        <option value="NM">
                          New Mexico
                        </option>
                        <option value="NY">
                          New York
                        </option>
                        <option value="NC">
                          North Carolina
                        </option>
                        <option value="ND">
                          North Dakota
                        </option>
                        <option value="OH">
                          Ohio
                        </option>
                        <option value="OK">
                          Oklahoma
                        </option>
                        <option value="OR">
                          Oregon
                        </option>
                        <option value="PA">
                          Pennsylvania
                        </option>
                        <option value="RI">
                          Rhode Island
                        </option>
                        <option value="SC">
                          South Carolina
                        </option>
                        <option value="SD">
                          South Dakota
                        </option>
                        <option value="TN">
                          Tennessee
                        </option>
                        <option value="TX">
                          Texas
                        </option>
                        <option value="UT">
                          Utah
                        </option>
                        <option value="VT">
                          Vermont
                        </option>
                        <option value="VA">
                          Virginia
                        </option>
                        <option value="WA">
                          Washington
                        </option>
                        <option value="WV">
                          West Virginia
                        </option>
                        <option value="WI">
                          Wisconsin
                        </option>
                        <option value="WY">
                          Wyoming
                        </option>
                      </select>
                                                <label>
                        State / Province *
                      </label>
                                                <select class="">
                        <option value="AL">
                          Alabama
                        </option>
                        <option value="AK">
                          Alaska
                        </option>
                        <option value="AZ">
                          Arizona
                        </option>
                        <option value="AR">
                          Arkansas
                        </option>
                        <option value="CA">
                          California
                        </option>
                        <option value="CO">
                          Colorado
                        </option>
                        <option value="CT">
                          Connecticut
                        </option>
                        <option value="DE">
                          Delaware
                        </option>
                        <option value="DC">
                          District Of Columbia
                        </option>
                        <option value="FL">
                          Florida
                        </option>
                        <option value="GA">
                          Georgia
                        </option>
                        <option value="HI">
                          Hawaii
                        </option>
                        <option value="ID">
                          Idaho
                        </option>
                        <option selected="" value="IL">
                          Illinois
                        </option>
                        <option value="IN">
                          Indiana
                        </option>
                        <option value="IA">
                          Iowa
                        </option>
                        <option value="KS">
                          Kansas
                        </option>
                        <option value="KY">
                          Kentucky
                        </option>
                        <option value="LA">
                          Louisiana
                        </option>
                        <option value="ME">
                          Maine
                        </option>
                        <option value="MD">
                          Maryland
                        </option>
                        <option value="MA">
                          Massachusetts
                        </option>
                        <option value="MI">
                          Michigan
                        </option>
                        <option value="MN">
                          Minnesota
                        </option>
                        <option value="MS">
                          Mississippi
                        </option>
                        <option value="MO">
                          Missouri
                        </option>
                        <option value="MT">
                          Montana
                        </option>
                        <option value="NE">
                          Nebraska
                        </option>
                        <option value="NV">
                          Nevada
                        </option>
                        <option value="NH">
                          New Hampshire
                        </option>
                        <option value="NJ">
                          New Jersey
                        </option>
                        <option value="NM">
                          New Mexico
                        </option>
                        <option value="NY">
                          New York
                        </option>
                        <option value="NC">
                          North Carolina
                        </option>
                        <option value="ND">
                          North Dakota
                        </option>
                        <option value="OH">
                          Ohio
                        </option>
                        <option value="OK">
                          Oklahoma
                        </option>
                        <option value="OR">
                          Oregon
                        </option>
                        <option value="PA">
                          Pennsylvania
                        </option>
                        <option value="RI">
                          Rhode Island
                        </option>
                        <option value="SC">
                          South Carolina
                        </option>
                        <option value="SD">
                          South Dakota
                        </option>
                        <option value="TN">
                          Tennessee
                        </option>
                        <option value="TX">
                          Texas
                        </option>
                        <option value="UT">
                          Utah
                        </option>
                        <option value="VT">
                          Vermont
                        </option>
                        <option value="VA">
                          Virginia
                        </option>
                        <option value="WA">
                          Washington
                        </option>
                        <option value="WV">
                          West Virginia
                        </option>
                        <option value="WI">
                          Wisconsin
                        </option>
                        <option value="WY">
                          Wyoming
                        </option>
                      </select>
                                                <label>
                        Zip / Post Code *
                      </label>
                                                <select class="">
                        <option value="AL">
                          Alabama
                        </option>
                        <option value="AK">
                          Alaska
                        </option>
                        <option value="AZ">
                          Arizona
                        </option>
                        <option value="AR">
                          Arkansas
                        </option>
                        <option value="CA">
                          California
                        </option>
                        <option value="CO">
                          Colorado
                        </option>
                        <option value="CT">
                          Connecticut
                        </option>
                        <option value="DE">
                          Delaware
                        </option>
                        <option value="DC">
                          District Of Columbia
                        </option>
                        <option value="FL">
                          Florida
                        </option>
                        <option value="GA">
                          Georgia
                        </option>
                        <option value="HI">
                          Hawaii
                        </option>
                        <option value="ID">
                          Idaho
                        </option>
                        <option selected="" value="IL">
                          Illinois
                        </option>
                        <option value="IN">
                          Indiana
                        </option>
                        <option value="IA">
                          Iowa
                        </option>
                        <option value="KS">
                          Kansas
                        </option>
                        <option value="KY">
                          Kentucky
                        </option>
                        <option value="LA">
                          Louisiana
                        </option>
                        <option value="ME">
                          Maine
                        </option>
                        <option value="MD">
                          Maryland
                        </option>
                        <option value="MA">
                          Massachusetts
                        </option>
                        <option value="MI">
                          Michigan
                        </option>
                        <option value="MN">
                          Minnesota
                        </option>
                        <option value="MS">
                          Mississippi
                        </option>
                        <option value="MO">
                          Missouri
                        </option>
                        <option value="MT">
                          Montana
                        </option>
                        <option value="NE">
                          Nebraska
                        </option>
                        <option value="NV">
                          Nevada
                        </option>
                        <option value="NH">
                          New Hampshire
                        </option>
                        <option value="NJ">
                          New Jersey
                        </option>
                        <option value="NM">
                          New Mexico
                        </option>
                        <option value="NY">
                          New York
                        </option>
                        <option value="NC">
                          North Carolina
                        </option>
                        <option value="ND">
                          North Dakota
                        </option>
                        <option value="OH">
                          Ohio
                        </option>
                        <option value="OK">
                          Oklahoma
                        </option>
                        <option value="OR">
                          Oregon
                        </option>
                        <option value="PA">
                          Pennsylvania
                        </option>
                        <option value="RI">
                          Rhode Island
                        </option>
                        <option value="SC">
                          South Carolina
                        </option>
                        <option value="SD">
                          South Dakota
                        </option>
                        <option value="TN">
                          Tennessee
                        </option>
                        <option value="TX">
                          Texas
                        </option>
                        <option value="UT">
                          Utah
                        </option>
                        <option value="VT">
                          Vermont
                        </option>
                        <option value="VA">
                          Virginia
                        </option>
                        <option value="WA">
                          Washington
                        </option>
                        <option value="WV">
                          West Virginia
                        </option>
                        <option value="WI">
                          Wisconsin
                        </option>
                        <option value="WY">
                          Wyoming
                        </option>
                      </select>
                                                <div class="clearfix">
                                                </div>
                                                <button>
                        Get A Qoute
                      </button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="shippingbox">
                                            <h5>
                                                Discount Codes
                                            </h5>
                                            <form>
                                                <label>
                        Enter your coupon code if you have one
                      </label>
                                                <input type="text" name="">
                                                <div class="clearfix">
                                                </div>
                                                <button>
                        Get A Qoute
                      </button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="shippingbox">
                                            <div class="subtotal">
                                                <h5>
                                                    Sub Total
                                                </h5>
                                                <span>
                        $1.000.00
                      </span>
                                            </div>
                                            <div class="grandtotal">
                                                <h5>
                                                    GRAND TOTAL
                                                </h5>
                                                <span>
                        $1.000.00
                      </span>
                                            </div>
                                            <button>
                      Process To Checkout
                    </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
                <div class="clearfix">
                </div>
                <div class="footer">
                    <div class="footer">
                        <div class="footer-info">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="footer-logo">
                                            <a href="#"><img src="images/logo.png" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-md-9">
                                        <h4 class="title">
                                            Contact <strong>Info</strong>
                                        </h4>
                                        <p>97 Man Thiện, Hiệp Phú, Q.9, TP.HCM</p>
                                        <p>Email : daylaemailne@xgear.com</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </body>

        </html>