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
        <link href="css/style.css" rel="stylesheet">
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
                            Home - Products List
                        </p>
                    </div>
                </div>
            </div>
            <div class="clearfix">
            </div>
            <div class="container_fullwidth">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="category leftbar">
                                <h3 class="title">
                                    Categories
                                </h3>
                                <ul>
                                    <li>
                                        <a href="#">
                      Men
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      Women
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      Salon
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      New Trend
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      Living room
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      Bed room
                    </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="branch leftbar">
                                <h3 class="title">
                                    Branch
                                </h3>
                                <ul>
                                    <li>
                                        <a href="#">
                      New
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      Sofa
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      Salon
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      New Trend
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      Living room
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      Bed room
                    </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="price-filter leftbar">
                                <h3 class="title">
                                    Price
                                </h3>
                                <form class="pricing">
                                    <label>
                    $ 
                    <input type="number">
                  </label>
                                    <span class="separate">
                    - 
                  </span>
                                    <label>
                    $ 
                    <input type="number">
                  </label>
                                    <input type="submit" value="Go">
                                </form>
                            </div>
                            <div class="clolr-filter leftbar">
                                <h3 class="title">
                                    Color
                                </h3>
                                <ul>
                                    <li>
                                        <a href="#" class="red-bg">
                      light red
                    </a>
                                    </li>
                                    <li>
                                        <a href="#" class=" yellow-bg">
                      yellow"
                    </a>
                                    </li>
                                    <li>
                                        <a href="#" class="black-bg ">
                      black
                    </a>
                                    </li>
                                    <li>
                                        <a href="#" class="pink-bg">
                      pink
                    </a>
                                    </li>
                                    <li>
                                        <a href="#" class="dkpink-bg">
                      dkpink
                    </a>
                                    </li>
                                    <li>
                                        <a href="#" class="chocolate-bg">
                      chocolate
                    </a>
                                    </li>
                                    <li>
                                        <a href="#" class="orange-bg">
                      orange-bg
                    </a>
                                    </li>
                                    <li>
                                        <a href="#" class="off-white-bg">
                      off-white
                    </a>
                                    </li>
                                    <li>
                                        <a href="#" class="extra-lightgreen-bg">
                      extra-lightgreen
                    </a>
                                    </li>
                                    <li>
                                        <a href="#" class="lightgreen-bg">
                      lightgreen
                    </a>
                                    </li>
                                    <li>
                                        <a href="#" class="biscuit-bg">
                      biscuit
                    </a>
                                    </li>
                                    <li>
                                        <a href="#" class="chocolatelight-bg">
                      chocolatelight
                    </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="product-tag leftbar">
                                <h3 class="title">
                                    Products
                                    <strong>
                    Tags
                  </strong>
                                </h3>
                                <ul>
                                    <li>
                                        <a href="#">
                      Lincoln us
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      SDress for Girl
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      Corner
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      Window
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      PG
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      Oscar
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      Bath room
                    </a>
                                    </li>
                                    <li>
                                        <a href="#">
                      PSD
                    </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="others leftbar">
                                <h3 class="title">
                                    Others
                                </h3>
                            </div>
                            <div class="others leftbar">
                                <h3 class="title">
                                    Others
                                </h3>
                            </div>
                            <div class="fbl-box leftbar">
                                <h3 class="title">
                                    Facebook
                                </h3>
                                <span class="likebutton">
                  <a href="#">
                    <img src="images/fblike.png" alt="">
                  </a>
                </span>
                                <p>
                                    12k people like Flat Shop.
                                </p>
                                <ul>
                                    <li>
                                        <a href="#">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                        </a>
                                    </li>
                                </ul>
                                <div class="fbplug">
                                    <a href="#">
                                        <span>
                      <img src="images/fbicon.png" alt="">
                    </span> Facebook social plugin
                                    </a>
                                </div>
                            </div>
                            <div class="leftbanner">
                                <img src="images/banner-small-01.png" alt="">
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="banner">
                                <div class="bannerslide" id="bannerslide">
                                    <ul class="slides">
                                        <li>
                                            <a href="#">
                                                <img src="images/banner-01.jpg" alt="" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="images/banner-02.jpg" alt="" />
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix">
                            </div>
                            <div class="products-list">
                                <div class="toolbar">
                                    <div class="sorter">
                                        <div class="view-mode">
                                            <a href="#" class="list active">
                        List
                      </a>
                                            <a href="productgrid.htm" class="grid">
                        Grid
                      </a>
                                        </div>
                                        <div class="sort-by">
                                            Sort by :
                                            <select name="">
                        <option value="Default" selected >
                          Default
                        </option>
                        <option value="Name">
                          Name
                        </option>
                        <option value="Price">
                          Price
                        </option>
                      </select>
                                        </div>
                                        <div class="limiter">
                                            Show :
                                            <select name="">
                        <option value="3" selected>
                          3
                        </option>
                        <option value="6">
                          6
                        </option>
                        <option value="9">
                          9
                        </option>
                      </select>
                                        </div>
                                    </div>
                                    <div class="pager">
                                        <a href="#" class="prev-page">
                                            <i class="fa fa-angle-left">
                      </i>
                                        </a>
                                        <a href="#" class="active">
                      1
                    </a>
                                        <a href="#">
                      2
                    </a>
                                        <a href="#">
                      3
                    </a>
                                        <a href="#" class="next-page">
                                            <i class="fa fa-angle-right">
                      </i>
                                        </a>
                                    </div>
                                </div>
                                <ul class="products-listItem">
                                    <li class="products">
                                        <div class="offer">
                                            New
                                        </div>
                                        <div class="thumbnail">
                                            <img src="images/products/small/products-05.png" alt="Product Name">
                                        </div>
                                        <div class="product-list-description">
                                            <div class="productname">
                                                Lincoln Corner Unit Products
                                            </div>
                                            <p>
                                                <img src="images/star.png" alt="">
                                                <a href="#" class="review_num">
                          02 Review(s)
                        </a>
                                            </p>
                                            <p>
                                                Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultri ces posuere cubilia curae. Proin lectus ipsum, gravida etds mattis vulputate, tristique ut lectus. Sed
                                                et lorem nunc...
                                            </p>
                                            <div class="list_bottom">
                                                <div class="price">
                                                    <span class="new_price">
                            450.00
                            <sup>
                              $
                            </sup>
                          </span>
                                                    <span class="old_price">
                            450.00
                            <sup>
                              $
                            </sup>
                          </span>
                                                </div>
                                                <div class="button_group">
                                                    <button class="button">
                            Add To Cart
                          </button>
                                                    <button class="button compare">
                            <i class="fa fa-exchange">
                            </i>
                          </button>
                                                    <button class="button favorite">
                            <i class="fa fa-heart-o">
                            </i>
                          </button>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="products">
                                        <div class="offer">
                                            New
                                        </div>
                                        <div class="thumbnail">
                                            <img src="images/products/small/products-05.png" alt="Product Name">
                                        </div>
                                        <div class="product-list-description">
                                            <div class="productname">
                                                Lincoln Corner Unit Products
                                            </div>
                                            <p>
                                                <img src="images/star.png" alt="">
                                                <a href="#" class="review_num">
                          02 Review(s)
                        </a>
                                            </p>
                                            <p>
                                                Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultri ces posuere cubilia curae. Proin lectus ipsum, gravida etds mattis vulputate, tristique ut lectus. Sed
                                                et lorem nunc...
                                            </p>
                                            <div class="list_bottom">
                                                <div class="price">
                                                    <span class="new_price">
                            450.00
                            <sup>
                              $
                            </sup>
                          </span>
                                                    <span class="old_price">
                            450.00
                            <sup>
                              $
                            </sup>
                          </span>
                                                </div>
                                                <div class="button_group">
                                                    <button class="button">
                            Add To Cart
                          </button>
                                                    <button class="button compare">
                            <i class="fa fa-exchange">
                            </i>
                          </button>
                                                    <button class="button favorite">
                            <i class="fa fa-heart-o">
                            </i>
                          </button>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="products">
                                        <div class="offer">
                                            New
                                        </div>
                                        <div class="thumbnail">
                                            <img src="images/products/small/products-05.png" alt="Product Name">
                                        </div>
                                        <div class="product-list-description">
                                            <div class="productname">
                                                Lincoln Corner Unit Products
                                            </div>
                                            <p>
                                                <img src="images/star.png" alt="">
                                                <a href="#" class="review_num">
                          02 Review(s)
                        </a>
                                            </p>
                                            <p>
                                                Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultri ces posuere cubilia curae. Proin lectus ipsum, gravida etds mattis vulputate, tristique ut lectus. Sed
                                                et lorem nunc...
                                            </p>
                                            <div class="list_bottom">
                                                <div class="price">
                                                    <span class="new_price">
                            450.00
                            <sup>
                              $
                            </sup>
                          </span>
                                                    <span class="old_price">
                            450.00
                            <sup>
                              $
                            </sup>
                          </span>
                                                </div>
                                                <div class="button_group">
                                                    <button class="button">
                            Add To Cart
                          </button>
                                                    <button class="button compare">
                            <i class="fa fa-exchange">
                            </i>
                          </button>
                                                    <button class="button favorite">
                            <i class="fa fa-heart-o">
                            </i>
                          </button>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="products">
                                        <div class="offer">
                                            New
                                        </div>
                                        <div class="thumbnail">
                                            <img src="images/products/small/products-05.png" alt="Product Name">
                                        </div>
                                        <div class="product-list-description">
                                            <div class="productname">
                                                Lincoln Corner Unit Products
                                            </div>
                                            <p>
                                                <img src="images/star.png" alt="">
                                                <a href="#" class="review_num">
                          02 Review(s)
                        </a>
                                            </p>
                                            <p>
                                                Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultri ces posuere cubilia curae. Proin lectus ipsum, gravida etds mattis vulputate, tristique ut lectus. Sed
                                                et lorem nunc...
                                            </p>
                                            <div class="list_bottom">
                                                <div class="price">
                                                    <span class="new_price">
                            450.00
                            <sup>
                              $
                            </sup>
                          </span>
                                                    <span class="old_price">
                            450.00
                            <sup>
                              $
                            </sup>
                          </span>
                                                </div>
                                                <div class="button_group">
                                                    <button class="button">
                            Add To Cart
                          </button>
                                                    <button class="button compare">
                            <i class="fa fa-exchange">
                            </i>
                          </button>
                                                    <button class="button favorite">
                            <i class="fa fa-heart-o">
                            </i>
                          </button>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="products">
                                        <div class="offer">
                                            New
                                        </div>
                                        <div class="thumbnail">
                                            <img src="images/products/small/products-05.png" alt="Product Name">
                                        </div>
                                        <div class="product-list-description">
                                            <div class="productname">
                                                Lincoln Corner Unit Products
                                            </div>
                                            <p>
                                                <img src="images/star.png" alt="">
                                                <a href="#" class="review_num">
                          02 Review(s)
                        </a>
                                            </p>
                                            <p>
                                                Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultri ces posuere cubilia curae. Proin lectus ipsum, gravida etds mattis vulputate, tristique ut lectus. Sed
                                                et lorem nunc...
                                            </p>
                                            <div class="list_bottom">
                                                <div class="price">
                                                    <span class="new_price">
                            450.00
                            <sup>
                              $
                            </sup>
                          </span>
                                                    <span class="old_price">
                            450.00
                            <sup>
                              $
                            </sup>
                          </span>
                                                </div>
                                                <div class="button_group">
                                                    <button class="button">
                            Add To Cart
                          </button>
                                                    <button class="button compare">
                            <i class="fa fa-exchange">
                            </i>
                          </button>
                                                    <button class="button favorite">
                            <i class="fa fa-heart-o">
                            </i>
                          </button>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <div class="toolbar">
                                    <div class="sorter bottom">
                                        <div class="view-mode">
                                            <a href="#" class="list active">
                        List
                      </a>
                                            <a href="productgrid.htm" class="grid">
                        Grid
                      </a>
                                        </div>
                                        <div class="sort-by">
                                            Sort by :
                                            <select name="">
                        <option value="Default" selected>
                          Default
                        </option>
                        <option value="Name">
                          Name
                        </option>
                        <option value="Price">
                          Price
                        </option>
                      </select>
                                        </div>
                                        <div class="limiter">
                                            Show :
                                            <select name="">
                        <option value="3" selected>
                          3
                        </option>
                        <option value="6">
                          6
                        </option>
                        <option value="9">
                          9
                        </option>
                      </select>
                                        </div>
                                    </div>
                                    <div class="pager">
                                        <a href="#" class="prev-page">
                                            <i class="fa fa-angle-left">
                      </i>
                                        </a>
                                        <a href="#" class="active">
                      1
                    </a>
                                        <a href="#">
                      2
                    </a>
                                        <a href="#">
                      3
                    </a>
                                        <a href="#" class="next-page">
                                            <i class="fa fa-angle-right">
                      </i>
                                        </a>
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