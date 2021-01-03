<%@ page pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="images/favicon.png">
        <title>Welcome to FlatShop</title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
        <link href="css/sequence-looptheme.css" rel="stylesheet" media="all" />
        <link href="css/style.css" rel="stylesheet">
        <!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
    </head>

    <body id="home">
        <div class="wrapper">
            <div class="header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2 col-sm-2">
                            <div class="logo">
                                <a href="index.htm"><img src="images/logo.png" alt="FlatShop"></a>
                            </div>
                        </div>
                        <div class="col-md-10 col-sm-10">
                            <div class="header_top">

                            </div>
                            <div class="clearfix"></div>
                            <div class="header_bottom">
                                <ul class="option">
                                    <li id="search" class="search">
                                        <form>
                                            <input class="search-submit" type="submit" value=""><input class="search-input" placeholder="Enter your search term..." type="text" value="" name="search">
                                        </form>
                                    </li>
                                    <li class="option-cart"><a href="#" class="cart-icon">cart
										<span class="cart_no">02</span>
								</a>
                                        <ul class="option-cart-item">
                                            <li>
                                                <div class="cart-item">
                                                    <div class="image">
                                                        <img src="images/products/thum/products-01.png" alt="">
                                                    </div>
                                                    <div class="item-description">
                                                        <p class="name">Lincoln chair</p>
                                                        <p>
                                                            Size: <span class="light-red">One size</span><br>Quantity:
                                                            <span class="light-red">01</span>
                                                        </p>
                                                    </div>
                                                    <div class="right">
                                                        <p class="price">$30.00</p>
                                                        <a href="#" class="remove"><img src="images/remove.png" alt="remove"></a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="cart-item">
                                                    <div class="image">
                                                        <img src="images/products/thum/products-02.png" alt="">
                                                    </div>
                                                    <div class="item-description">
                                                        <p class="name">Lincoln chair</p>
                                                        <p>
                                                            Size: <span class="light-red">One size</span><br>Quantity:
                                                            <span class="light-red">01</span>
                                                        </p>
                                                    </div>
                                                    <div class="right">
                                                        <p class="price">$30.00</p>
                                                        <a href="#" class="remove"><img src="images/remove.png" alt="remove"></a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><span class="total">Total <strong>$60.00</strong></span>
                                                <button class="checkout" onClick="location.href='checkout.htm'">CheckOut</button></li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
									<span class="sr-only">Toggle navigation</span><span
										class="icon-bar"></span><span class="icon-bar"></span><span
										class="icon-bar"></span>
								</button>
                                </div>
                                <div class="navbar-collapse collapse">
                                    <ul class="nav navbar-nav">
                                        <li class="active dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Home</a>
                                            <div class="dropdown-menu">
                                                <ul class="mega-menu-links">
                                                    <li><a href="index.htm">home</a></li>
                                                    <li><a href="home2.htm">home2</a></li>
                                                    <li><a href="home3.htm">home3</a></li>
                                                    <li><a href="productlist.htm">productlist</a></li>
                                                    <li><a href="productgrid.htm">productgrid</a></li>
                                                    <li><a href="details.htm">Details</a></li>
                                                    <li><a href="cart.htm">Cart</a></li>
                                                    <li><a href="checkout.htm">CheckOut</a></li>
                                                    <li><a href="checkout2.htm">CheckOut2</a></li>
                                                    <li><a href="contact.htm">contact</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li><a href="productgrid.htm">men</a></li>
                                        <li><a href="productlist.htm">women</a></li>
                                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Fashion</a>
                                            <div class="dropdown-menu mega-menu">
                                                <div class="row">
                                                    <div class="col-md-6 col-sm-6">
                                                        <ul class="mega-menu-links">
                                                            <li><a href="productgrid.htm">New Collection</a></li>
                                                            <li><a href="productgrid.htm">Shirts & tops</a></li>
                                                            <li><a href="productgrid.htm">Laptop & Brie</a></li>
                                                            <li><a href="productgrid.htm">Dresses</a></li>
                                                            <li><a href="productgrid.htm">Blazers & Jackets</a></li>
                                                            <li><a href="productgrid.htm">Shoulder Bags</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-6 col-sm-6">
                                                        <ul class="mega-menu-links">
                                                            <li><a href="productgrid.htm">New Collection</a></li>
                                                            <li><a href="productgrid.htm">Shirts & tops</a></li>
                                                            <li><a href="productgrid.htm">Laptop & Brie</a></li>
                                                            <li><a href="productgrid.htm">Dresses</a></li>
                                                            <li><a href="productgrid.htm">Blazers & Jackets</a></li>
                                                            <li><a href="productgrid.htm">Shoulder Bags</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li><a href="productgrid.htm">gift</a></li>
                                        <li><a href="productgrid.htm">kids</a></li>
                                        <li><a href="productgrid.htm">blog</a></li>
                                        <li><a href="productgrid.htm">jewelry</a></li>
                                        <li><a href="contact.htm">contact us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="hom-slider">
                <div class="container">
                    <div id="sequence">
                        <div class="sequence-prev">
                            <i class="fa fa-angle-left"></i>
                        </div>
                        <div class="sequence-next">
                            <i class="fa fa-angle-right"></i>
                        </div>
                        <ul class="sequence-canvas">
                            <li class="animate-in">
                                <div class="flat-caption caption1 formLeft delay300 text-center">
                                    <span class="suphead">Paris show 2014</span>
                                </div>
                                <div class="flat-caption caption2 formLeft delay400 text-center">
                                    <h1>Collection For Winter</h1>
                                </div>
                                <div class="flat-caption caption3 formLeft delay500 text-center">
                                    <p>
                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br>Lorem Ipsum is simply dummy text of the printing and typesetting
                                    </p>
                                </div>
                                <div class="flat-button caption4 formLeft delay600 text-center">
                                    <a class="more" href="#">More Details</a>
                                </div>
                                <div class="flat-image formBottom delay200" data-duration="5" data-bottom="true">
                                    <img src="images/slider-image-01.png" alt="">
                                </div>
                            </li>
                            <li>
                                <div class="flat-caption caption2 formLeft delay400">
                                    <h1>Collection For Winter</h1>
                                </div>
                                <div class="flat-caption caption3 formLeft delay500">
                                    <h2>
                                        Etiam velit purus, luctus vitae velit sedauctor<br>egestas diam, Etiam velit purus.
                                    </h2>
                                </div>
                                <div class="flat-button caption5 formLeft delay600">
                                    <a class="more" href="#">More Details</a>
                                </div>
                                <div class="flat-image formBottom delay200" data-bottom="true">
                                    <img src="images/slider-image-02.png" alt="">
                                </div>
                            </li>
                            <li>
                                <div class="flat-caption caption2 formLeft delay400 text-center">
                                    <h1>New Fashion of 2013</h1>
                                </div>
                                <div class="flat-caption caption3 formLeft delay500 text-center">
                                    <p>
                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br>Lorem Ipsum is simply dummy text of the printing and typesetting
                                    </p>
                                </div>
                                <div class="flat-button caption4 formLeft delay600 text-center">
                                    <a class="more" href="#">More Details</a>
                                </div>
                                <div class="flat-image formBottom delay200" data-bottom="true">
                                    <img src="images/slider-image-03.png" alt="">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="promotion-banner">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <div class="promo-box">
                                    <img src="images/promotion-01.png" alt="">
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <div class="promo-box">
                                    <img src="images/promotion-02.png" alt="">
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <div class="promo-box">
                                    <img src="images/promotion-03.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="container_fullwidth">
                <div class="container">
                    <div class="hot-products">
                        <h3 class="title">
                            <strong>Hot</strong> Products
                        </h3>
                        <div class="control">
                            <a id="prev_hot" class="prev" href="#">&lt;</a><a id="next_hot" class="next" href="#">&gt;</a>
                        </div>
                        <ul id="hot">
                            <li>
                                <div class="row">
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="offer">- %20</div>
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-01.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-02.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="offer">New</div>
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-03.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-04.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="offer">- %20</div>
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-01.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-02.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="offer">New</div>
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-03.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-04.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <div class="featured-products">
                        <h3 class="title">
                            <strong>Featured </strong> Products
                        </h3>
                        <div class="control">
                            <a id="prev_featured" class="prev" href="#">&lt;</a><a id="next_featured" class="next" href="#">&gt;</a>
                        </div>
                        <ul id="featured">
                            <li>
                                <div class="row">
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-05.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-06.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="offer">New</div>
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-07.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-04.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-01.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-02.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-03.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="products">
                                            <div class="thumbnail">
                                                <a href="details.htm"><img src="images/products/small/products-04.png" alt="Product Name"></a>
                                            </div>
                                            <div class="productname">Iphone 5s Gold 32 Gb 2013</div>
                                            <h4 class="price">$451.00</h4>
                                            <div class="button_group">
                                                <button class="button add-cart" type="button">Add To
												Cart</button>
                                                <button class="button compare" type="button">
												<i class="fa fa-exchange"></i>
											</button>
                                                <button class="button wishlist" type="button">
												<i class="fa fa-heart-o"></i>
											</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <div class="our-brand">
                        <h3 class="title">
                            <strong>Our </strong> Brands
                        </h3>
                        <div class="control">
                            <a id="prev_brand" class="prev" href="#">&lt;</a><a id="next_brand" class="next" href="#">&gt;</a>
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
            <div class="clearfix"></div>
            <div class="footer">
                <div class="footer-info">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="footer-logo">
                                    <a href="#"><img src="images/logo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <h4 class="title">
                                    Contact <strong>Info</strong>
                                </h4>
                                <p>No. 08, Nguyen Trai, Hanoi , Vietnam</p>
                                <p>Call Us : (084) 1900 1008</p>
                                <p>Email : michael@leebros.us</p>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <h4 class="title">
                                    Customer<strong> Support</strong>
                                </h4>
                                <ul class="support">
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="#">Payment Option</a></li>
                                    <li><a href="#">Booking Tips</a></li>
                                    <li><a href="#">Infomation</a></li>
                                </ul>
                            </div>
                            <div class="col-md-3">
                                <h4 class="title">
                                    Get Our <strong>Newsletter </strong>
                                </h4>
                                <p>Lorem ipsum dolor ipsum dolor.</p>
                                <form class="newsletter">
                                    <input type="text" name="" placeholder="Type your email....">
                                    <input type="submit" value="SignUp" class="button">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </body>

    </html>