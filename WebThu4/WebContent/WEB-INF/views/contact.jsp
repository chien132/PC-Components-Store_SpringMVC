<%@ page pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="images/favicon.png">
        <title>
            Welcome to FlatShop
        </title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
</script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js">
</script>
<![endif]-->
    </head>

    <body>
        <div class="wrapper">
            <div class="header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2 col-sm-2">
                            <div class="logo">
                                <a href="index.htm">
                                    <img src="images/logo.png" alt="FlatShop">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-10 col-sm-10">
                            <div class="header_top">
                                <div class="row">
                                    <div class="col-md-3">
                                    </div>
                                    <div class="col-md-6">
                                    </div>
                                    <div class="col-md-3">
                                        <ul class="usermenu">
                                            <li>
                                                <a href="checkout.htm" class="log">
                          Login
                        </a>
                                            </li>
                                            <li>
                                                <a href="checkout2.htm" class="reg">
                          Register
                        </a>
                                            </li>
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
                                                        <a href="details.htm">
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
                            Home - Contact us
                        </p>
                    </div>
                </div>
            </div>
            <div class="clearfix">
            </div>
            <div class="container_fullwidth">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h5 class="title contact-title">
                                Contact Us
                            </h5>
                            <div class="clearfix">
                            </div>
                            <div class="map">
                                <iframe width="600" height="350" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Vietnam&amp;aq=&amp;sll=14.058324,108.277199&amp;sspn=21.827722,43.286133&amp;ie=UTF8&amp;hq=&amp;hnear=Vietnam&amp;ll=14.058324,108.277199&amp;spn=8.883583,21.643066&amp;t=m&amp;z=6&amp;output=embed">
                </iframe>
                            </div>
                            <div class="clearfix">
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="contact-infoormation">
                                        <h5>
                                            Contact Info
                                        </h5>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur ad ipis cing elit. Suspendisse at sapien mascsa. Lorem ipsum dolor sit amet, consectetur se adipiscing elit. Sed fermentum, sapien scele risque volutp at tempor, lacus est sodales massa, a hendrerit dolor slase
                                            turpis non mi.
                                        </p>
                                        <ul>
                                            <li>
                                                <span class="icon">
                          <img src="images/message.png" alt="">
                        </span>
                                                <p>
                                                    contact@michaeldesign.me
                                                    <br> support@michaeldesign.me
                                                </p>
                                            </li>
                                            <li>
                                                <span class="icon">
                          <img src="images/phone.png" alt="">
                        </span>
                                                <p>
                                                    084. 93 668 2236
                                                    <br> 084. 93 668 6789
                                                </p>
                                            </li>
                                            <li>
                                                <span class="icon">
                          <img src="images/address.png" alt="">
                        </span>
                                                <p>
                                                    No.86 ChuaBoc St, DongDa Dt,
                                                    <br> Hanoi, Vietnam
                                                </p>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="ContactForm">
                                        <h5>
                                            Contact Form
                                        </h5>
                                        <form>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label>
                            Your Name 
                            <strong class="red">
                              *
                            </strong>
                          </label>
                                                    <input class="inputfild" type="text" name="">
                                                </div>
                                                <div class="col-md-6">
                                                    <label>
                            Your Email
                            <strong class="red">
                              *
                            </strong>
                          </label>
                                                    <input class="inputfild" type="email" name="">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <label>
                            Your Message 
                            <strong class="red">
                              *
                            </strong>
                          </label>
                                                    <textarea class="inputfild" rows="8" name="">
                          </textarea>
                                                </div>
                                            </div>
                                            <button class="pull-right">
                        Send Message
                      </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>
                    <div class="our-brand">
                        <h3 class="title">
                            <strong>
                Our 
              </strong> Brands
                        </h3>
                        <div class="control">
                            <a id="prev_brand" class="prev" href="#">
                &lt;
              </a>
                            <a id="next_brand" class="next" href="#">
                &gt;
              </a>
                        </div>
                        <ul id="braldLogo">
                            <li>
                                <ul class="brand_item">
                                    <li>
                                        <a href="#">
                                            <div class="brand-logo">
                                                <img src="images/envato.png" alt="">
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="brand-logo">
                                                <img src="images/themeforest.png" alt="">
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="brand-logo">
                                                <img src="images/photodune.png" alt="">
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="brand-logo">
                                                <img src="images/activeden.png" alt="">
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="brand-logo">
                                                <img src="images/envato.png" alt="">
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <ul class="brand_item">
                                    <li>
                                        <a href="#">
                                            <div class="brand-logo">
                                                <img src="images/envato.png" alt="">
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="brand-logo">
                                                <img src="images/themeforest.png" alt="">
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="brand-logo">
                                                <img src="images/photodune.png" alt="">
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="brand-logo">
                                                <img src="images/activeden.png" alt="">
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="brand-logo">
                                                <img src="images/envato.png" alt="">
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clearfix">
            </div>
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
                                <p>No. 08, Nguyen Trai, Hanoi , Vietnam</p>
                                <p>Email : michael@leebros.us</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </body>

    </html>