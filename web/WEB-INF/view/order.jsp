<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>	
	<title>My Account - Premium Multipurpose HTML5/CSS3 Theme</title>
	<meta charset="utf-8" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />--
	<!-- FAVICONS -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/static/assets/css/../static/assets/images/icons/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="icons/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="icons/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="icons/apple-touch-icon-57-precomposed.png" />
    <link rel="shortcut icon" href="../images/icons/favicon.png" />
	
	<!-- GOOGLE WEB FONTS -->
	<link rel="stylesheet" href="/static/assets/css/font-awesome.min.css">
	
	<!-- BOOTSTRAP 3.3.7 CSS -->
	<link rel="stylesheet" href="/static/assets/css/bootstrap.min.css" />
	
	<!-- SLICK v1.6.0 CSS -->
	<link rel="stylesheet" href="/static/assets/css/slick-1.6.0/slick.css" />
	
	<link rel="stylesheet" href="/static/assets/css/jquery.fancybox.css" />
	<link rel="stylesheet" href="/static/assets/css/yith-woocommerce-compare/colorbox.css" />
	<link rel="stylesheet" href="/static/assets/css/owl-carousel/owl.carousel.min.css" />
	<link rel="stylesheet" href="/static/assets/css/owl-carousel/owl.theme.default.min.css" />
	<link rel="stylesheet" href="/static/assets/css/js_composer/js_composer.min.css" />
	<link rel="stylesheet" href="/static/assets/css/woocommerce/woocommerce.css" />
	<link rel="stylesheet" href="/static/assets/css/woocommerce/woocommerce-layout.css" />
	<link rel="stylesheet" href="/static/assets/css/woocommerce/woocommerce-smallscreen.css" />
	<link rel="stylesheet" href="/static/assets/css/yith-woocommerce-wishlist/style.css" />
	<link rel="stylesheet" href="/static/assets/css/a.css"/>
	
	<link rel="stylesheet" href="/static/assets/css/custom.css" />
	<link rel="stylesheet" href="/static/assets/css/app-orange.css" id="theme_color" />
	<link rel="stylesheet" href="" id="rtl" />
	<link rel="stylesheet" href="/static/assets/css/app-responsive.css" />
		<script type="text/javascript" src="/static/assets/jquery/jquery.min.js"></script>
	<script>
	$(function(){
	
   lis();
function lis(){
	var smalltotal=0;
	
	var l=$("#li1 li").length;
	$(".cart-contents:eq(0)").text(l);
	$(".cart-contents:eq(1)").text(l);
	var cou=0;
	
	for(var i=0;i<l;i++){
	
		var c=$("#li2 .product-price span span span+span:eq("+i+")").text();

		var cou=$("#li1 .qty span:eq("+i+")").text();
		
		var t=parseInt(c,0);
	
		var j=0;
		
		j=t*cou;

		smalltotal+=j;
	
		$("#li1 .cart-checkout:eq(0) span+span span span span+span").text(smalltotal);
		$("#li2 .cart-checkout span+span span span span+span").text(smalltotal);
		
	}
	
}
	})
	
	</script>
</head>
<c:set var="l" value="${sessionScope.user}"></c:set>
 <c:set var="cart" value="${sessionScope.cart}"></c:set>
 <c:set var="add" value="${sessionScope.address}"></c:set>
 <c:set var="order" value="${sessionScope.order}"></c:set>
<body class="page woocommerce-account woocommerce-page woocommerce-orders">
	<div class="body-wrapper theme-clearfix">
		<header id="header" class="header header-style1">
			<div class="header-top clearfix">
				<div class="container">
					<div class="rows">
						<!-- SIDEBAR TOP MENU -->
						<div class="pull-left top1">
							
							
							<div class="widget text-3 widget_text pull-left">
								<div class="widget-inner">
								<c:if test="${!empty l}">
								<c:set var="len">${l.username.length()}</c:set>
									<div class="textwidget">
									<a class="dd"  href=""> <c:out value="${l.getUsername()}"></c:out></a><a class="dd" style="left:${len}px;font-size:12px;" href="http://127.0.0.1:8888/Connjsp1/rem">&nbsp;&nbsp;&nbsp;注销</a>	
									</div>
									</c:if>
								</div>
							</div>
						
						</div>
						
						<div class="wrap-myacc pull-right">
							<div class="sidebar-account pull-left">
								<div class="account-title">My account</div>
                        
								<div id="my-account" class="my-account">
									<div class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
										<div class="widget-inner">
											<ul id="menu-my-account" class="menu">
												<li class="menu-my-account">
													<a class="item-link" href="my_account.html">
														<span class="menu-title">My Account</span>
													</a>
												</li>
												
												<li class="menu-cart">
													<a class="item-link" href="cart.html">
														<span class="menu-title">Cart</span>
													</a>
												</li>
												
												<li class="menu-checkout">
													<a class="item-link" href="checkout.html">
														<span class="menu-title">Checkout</span>
													</a>
												</li>
												
												<li class="menu-wishlist">
													<a class="item-link" href="wishlist.html">
														<span class="menu-title">Wishlist</span>
													</a>
												</li>
													<c:if test="${empty l}">
												<li>
													<a href="javascript:void(0);" data-toggle="modal" data-target="#login_form">
														<span>Login</span>
													</a>
												</li>
												</c:if>
											</ul>
										</div>
									</div>
								</div>
							</div>
							
							<div class="pull-left top2">
								<div class="widget-1 widget-first widget nav_menu-2 widget_nav_menu">
									<div class="widget-inner">
										<ul id="menu-checkout" class="menu">
											<li class="menu-checkout">
												<a class="item-link" href="checkout.html">
													<span class="menu-title">Checkout</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="header-mid clearfix">
				<div class="container">
					<div class="rows">
						<!-- LOGO -->
						<div class="etrostore-logo pull-left">
							<a href="index.jsp">
								<img src="../static/assets/images/icons/logo-orange.png" alt="Shoopy">
							</a>
						</div>
						
						<div class="mid-header pull-right">
							<div class="widget-1 widget-first widget sw_top-2 sw_top">
								<div class="widget-inner">
									<div class="top-form top-search">
										<div class="topsearch-entry">
											<input type="text" value="" name="s" placeholder="Enter your keyword...">	
											<div class="cat-wrapper">
												<label class="label-search">
													<select name="search_category" class="s1_option">
														<option value="">All Categories</option>
														<option value="8">Computers & Laptops</option>
														<option value="13">Computers & Networking</option>
														<option value="14">Smartphones & Tablet</option>
														<option value="15">Home Furniture</option>
														<option value="16">Home Appliances</option>
														<option value="17">Electronic Component</option>
														<option value="18">Household Goods</option>
														<option value="32">Appliances</option>
														<option value="49">Accessories</option>
														<option value="51">Electronics</option>
														<option value="78">Televisions</option>
														<option value="80">Cameras & Accessories</option>
													</select>
												</label>
											</div>
											
											<button type="button" title="Search" class="fa fa-search button-search-pro"></button>
										</div>
									</div>
								</div>
							</div>
							
							<div class="widget sw_top-3 sw_top pull-left" id="li3">
								<div class="widget-inner">
									<div class="top-form top-form-minicart etrostore-minicart pull-right">
										<div class="top-minicart-icon pull-right">
											<i class="fa fa-shopping-cart"></i>
											<a class="cart-contents" href="cart.html" title="View your shopping cart">
												<span class="minicart-number">2</span>
											</a>
										</div>
										
										<div class="wrapp-minicart" id="li1">
											<div class="minicart-padding">
												<div class="number-item">
													There are <span>items</span> in your cart
												</div>
												
												<ul class="minicart-content" >
													<c:forEach var="gl" items="${sessionScope.cart}">	
													<li><a href="simple_product.jsp" class="product-image">
															<img width="100" height="100"
															src="${gl.img}"
															class="attachment-100x100 size-100x100 wp-post-image"
															alt=""
															sizes="(max-width: 100px) 100vw, 100px" />
													</a>

														<div class="detail-item">
															<div class="product-details">
																<h4>
																	<a class="title-item" href="simple_product.jsp"><c:out value="${gl.gname}"/></a>
																</h4>

																<div class="product-price">
																	<span class="price"> <span
																		class="woocommerce-Price-amount amount"> <span
																			class="woocommerce-Price-currencySymbol">￥</span><c:out value="${gl.price}"/>
																	</span>
																	</span>

																	<div class="qty">
																		<span class="qty-number"><c:out value="${gl.count}"/></span>
																	</div>
																</div>

																<div class="product-action clearfix">
																	<a href="javascript:doPost('delet',{'id':'${gl.cid}','userid':'${l.id}'})" class="btn-remove" title="Remove this item">
																		<span class="fa fa-trash-o"></span>
																	</a> <a class="btn-edit" href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})"
																		title="View your shopping cart"> <span
																		class="fa fa-pencil"></span>
																	</a>
																</div>
															</div>
														</div></li>
</c:forEach>
												</ul>
												
												<div class="cart-checkout">
													<div class="price-total">
														<span class="label-price-total">Total</span>
														
														<span class="price-total-w">
															<span class="price">
																<span class="woocommerce-Price-amount amount">
																	<span class="woocommerce-Price-currencySymbol">￥</span> <span></span>
																</span>
															</span>
														</span>			
													</div>
													
													<div class="cart-links clearfix">
														<div class="cart-link">
															<a href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})" title="Cart">View Cart</a>
														</div>
														
														<div class="checkout-link">
															<a href="checkout.jsp" title="Check Out">Check Out</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="widget nav_menu-3 widget_nav_menu pull-left">
								<div class="widget-inner">
									<ul id="menu-wishlist" class="menu">
										<li class="menu-wishlist">
											<a class="item-link" href="wishlist.html">
												<span class="menu-title">Wishlist</span>
											</a>
										</li>
										
										<li class="yith-woocompare-open menu-compare">
											<a class="item-link compare" href="#">
												<span class="menu-title">Compare</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="header-bottom clearfix">
				<div class="container">
					<div class="rows">
						<!-- Primary navbar -->
						<div id="main-menu" class="main-menu">
							<nav id="primary-menu" class="primary-menu">
								<div class="navbar-inner navbar-inverse">
									<div class="resmenu-container">
										<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#ResMenuprimary_menu">
											<span class="sr-only">Categories</span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
										</button>
										
										<div id="ResMenuprimary_menu" class="collapse menu-responsive-wrapper">
											<ul id="menu-primary-menu" class="etrostore_resmenu">
												<li class="res-dropdown menu-home">
													<a class="item-link dropdown-toggle" href="index.jsp">Home</a>
													<span class="show-dropdown"></span>
													
													
												</li>
												<li class="active res-dropdown menu-shop">
													<a class="item-link dropdown-toggle" href="cart.jsp">Cart</a>
													<span class="show-dropdown"></span>
													
												</li>
												<li class="active res-dropdown menu-shop">
													<a class="item-link dropdown-toggle" href="checkout.jsp">CHECKOUT</a>
													<span class="show-dropdown"></span>
													
												</li>
												<li class="active res-dropdown menu-shop">
													<a class="item-link dropdown-toggle" href="my_account.jsp">MY ACCOUNT</a>
													<span class="show-dropdown"></span>
													
													
												</li>
												<li class="active res-dropdown menu-shop">
													<a class="item-link dropdown-toggle" href="shop.jsp">Shop</a>
													<span class="show-dropdown"></span>
												</li>
												<li class="menu-about-us">
													<a class="item-link" href="about_us.html">About Us</a>
												</li>
												
												<li class="menu-contact-us">
													<a class="item-link" href="contact_us.html">Contact Us</a>
												</li>
											</ul>
										</div>
									</div>
									
									<ul id="menu-primary-menu-1" class="nav nav-pills nav-mega etrostore-mega etrostore-menures">
										<li class="dropdown menu-home etrostore-mega-menu level1">
											<a href="index.jsp" class="item-link dropdown-toggle">
												<span class="have-title">
													<span class="menu-color" ></span>
													<span class="menu-title" >Home</span>
												</span>
											</a>
										
										</li>
										<li class="active dropdown menu-shop etrostore-mega-menu level1 etrostore-menu-img">
											<a href="cart.jsp" class="item-link dropdown-toggle">
												<span class="have-title">
													<span class="menu-color" ></span>
													
													<span class="menu-title" style="color:#fff">Cart</span>
												</span>
											</a>
												</li>
												
												<li class="dropdown-submenu column-4 menu-product-types">
													<a href="checkout.jsp">
														<span class="have-title">
															<span class="menu-title">CHECKOUT</span>
														</span>
													</a>
												</li>
												<li class="dropdown-submenu column-4 menu-product-types">
													<a href="my_account.jsp">
														<span class="have-title" >
															<span class="menu-title" data-color="#f03442">MY ACCOUNT</span>
														</span>
													</a>
												</li>
										<li class="active dropdown menu-shop etrostore-mega-menu level1 etrostore-menu-img">
											<a href="shop.jsp" class="item-link dropdown-toggle">
												<span class="have-title">
													
													
													<span class="menu-title" style="color:#fff;">Shop</span>
												</span>
											</a>
												</li>
											
												
												<li class="dropdown-submenu column-4 menu-product-layouts">
													<a href="about_us.jsp">
														<span class="have-title">
															<span class="menu-title">ABOUT US</span>
														</span>
													</a>
												</li>
												<li class="dropdown-submenu column-4 menu-product-layouts">
													<a href="contract_us.jsp">
														<span class="have-title">
															<span class="menu-title">CONTACT US</span>
														</span>
													</a>
												</li>
											</ul>
										</li>
										
										
									</ul>
								</div>
							</nav>
						</div>
						<!-- /Primary navbar -->
				  
						<div class="top-form top-form-minicart etrostore-minicart pull-right">
							<div class="top-minicart-icon pull-right">
								<i class="fa fa-shopping-cart"></i>
								<a class="cart-contents" href="cart.html" title="View your shopping cart">
									<span class="minicart-number">2</span>
								</a>
							</div>
						 
							<div class="wrapp-minicart" id="li2">
								<div class="minicart-padding">
									<div class="number-item">
										There are <span>items</span> in your cart
									</div>
									
									<ul class="minicart-content" id="li2">
										<c:forEach var="gl" items="${sessionScope.cart}">	
													<li><a href="simple_product.jsp" class="product-image">
															<img width="100" height="100"
															src="${gl.img}"
															class="attachment-100x100 size-100x100 wp-post-image"
															alt=""
															sizes="(max-width: 100px) 100vw, 100px" />
													</a>

														<div class="detail-item">
															<div class="product-details">
																<h4>
																	<a class="title-item" href="simple_product.jsp"><c:out value="${gl.gname}"/></a>
																</h4>

																<div class="product-price">
																	<span class="price"> <span
																		class="woocommerce-Price-amount amount"> <span
																			class="woocommerce-Price-currencySymbol">￥</span><span><c:out value="${gl.price}"/></span>
																	</span>
																	</span>

																	<div class="qty">
																		<span class="qty-number"><c:out value="${gl.count}"/></span>
																	</div>
																</div>

																<div class="product-action clearfix">
																	<a href="javascript:doPost('delet',{'id':'${gl.cid}','userid':'${l.id}'})" class="btn-remove" title="Remove this item">
																		<span class="fa fa-trash-o"></span>
																	</a> <a class="btn-edit" href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})"
																		title="View your shopping cart"> <span
																		class="fa fa-pencil"></span>
																	</a>
																</div>
															</div>
														</div></li>
</c:forEach>
									</ul>
									
									<div class="cart-checkout">
										<div class="price-total">
											<span class="label-price-total">Total</span>
											
											<span class="price-total-w">
												<span class="price">
													<span class="woocommerce-Price-amount amount">
														<span class="woocommerce-Price-currencySymbol">¥</span><span></span>
													</span>
												</span>
											</span>			
										</div>
										
										<div class="cart-links clearfix">
											<div class="cart-link">
												<a href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})" title="Cart">View Cart</a>
											</div>
											
											<div class="checkout-link">
												<a href="checkout.jsp" title="Check Out" style="color:#fa0;">Check Out</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
				  
						<div class="mid-header pull-right">
							<div class="widget sw_top">
								<span class="stick-sr">
									<i class="fa fa-search" aria-hidden="true"></i>
								</span>
								
								<div class="top-form top-search">
									<div class="topsearch-entry">
											<input type="text" value="" name="s" class="search-query" placeholder="Keyword here..." />
											<button type="button" class="button-search-pro">Search</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		
		<div class="listings-title">
			<div class="container">
				<div class="wrap-title">
					<h1>My Account</h1>
					<div class="bread">
						<div class="breadcrumbs theme-clearfix">
							<div class="container">
								<ul class="breadcrumb">
									<li>
										<a href="index.jsp">Home</a>
										<span class="go-page"></span>
									</li>
									
									<li class="active">
										<span>My account</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>			
		</div>
		
		<div class="container">
			<div class="row">
				<div id="contents" role="main" class="main-page  col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="post-6 page type-page status-publish hentry">
						<div class="entry">
							<div class="entry-content">
								<header>
									<h2 class="entry-title">My Account</h2>
								</header>
								
								<div class="entry-content">
									<div class="woocommerce">
										<nav class="woocommerce-MyAccount-navigation">
											<ul>
												<li>
													<a href="my_account.jsp">Dashboard</a>
												</li>
												
												<li class="is-active">
												   <a href="order.jsp">Orders</a>
												</li>
												
												<li>
													<a href="address.jsp">Addresses</a>
												</li>
												
												<li>
												   <a href="accountdetails.jsp">Account Details</a>
												</li>
												
												<li>
													<a href="rem">Logout</a>
												</li>
											</ul>
										</nav>
									  
										<div class="woocommerce-MyAccount-content">
											<table class="shop_table shop_table_responsive my_account_orders account-orders-table">
												<thead>
													<tr>
														<th class="order-number"><span class="nobr">Order</span></th>
												
														<th class="order-status"><span class="nobr">Status</span></th>
														<th class="order-total"><span class="nobr">Total</span></th>
														<th class="order-actions"><span class="nobr">&nbsp;</span></th>
													</tr>
												</thead>
												
												<tbody>
												<c:forEach var="or1" items="${order.list}">
													<tr class="order">
														<td class="order-number" data-title="Order">
															<a href="details.jsp">#<c:out value="${or1.id}"></c:out></a>
														</td>
														
														<td class="order-status" data-title="Status">
															Processing
														</td>
														<td class="order-total" data-title="Total">
															¥<c:out value="${or1.total}"/> for <c:out value="${or1.items}"/> items
														</td>
														
														<td class="order-actions" data-title="&nbsp;">
															<a href="javascript:doPost('down',{userid:'${l.id}',orderid:'${or1.id}'})" class="button view">View</a>													
														</td>
													</tr>
														</c:forEach>
														<nav class="woocommerce-pagination pull-right">
										<span class="note">Page:</span>
										<ul class="page-numbers">
											<c:forEach var="page" items="${order.pages}">
											<li><a class="page-numbers" href="o?pageNo=${page}&pageSize=${sessionScope.order.pageSize}&userid=${l.id}">${page}</a></li>
											</c:forEach>
											<li><a class="next page-numbers" href="">?</a></li>
										</ul>
									</nav>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<footer id="footer" class="footer default theme-clearfix">
			<!-- Content footer -->
			<div class="container">
				<div class="vc_row vc_row-fluid">
					<div class="vc_column_container vc_col-sm-12">
						<div class="vc_column-inner ">
							<div class="wpb_wrapper">
								<div id="sw_testimonial01" class="testimonial-slider client-wrapper-b carousel slide " data-interval="0">
									<div class="carousel-cl nav-custom">
										<a class="prev-test fa fa-angle-left" href="#sw_testimonial01" role="button" data-slide="prev"><span></span></a>
										<a class="next-test fa fa-angle-right" href="#sw_testimonial01" role="button" data-slide="next"><span></span></a>
									</div>
									
									<div class="carousel-inner">
										<div class="item active">
											<div class="item-inner">
												<div class="image-client pull-left">
													<a href="#" title="">
														<img width="127" height="127" src="../static/assets/images/1903/tm3.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" />
													</a>
												</div>
												
												<div class="client-say-info">
													<div class="client-comment">
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit....						
													</div>
													
													<div class="name-client">
														<h2><a href="#" title="">Jerry</a></h2>
														<p>Web Developer</p>
													</div>
												</div>
											</div>
											
											<div class="item-inner">
												<div class="image-client pull-left">
													<a href="#" title="">
														<img width="127" height="127" src="../static/assets/images/1903/tm1.png" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" />
													</a>
												</div>
											
												<div class="client-say-info">
													<div class="client-comment">
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit....						
													</div>
													
													<div class="name-client">
														<h2>
															<a href="#" title="">David Gand</a>
														</h2>
														
														<p>Designer</p>
													</div>
												</div>
											</div>
										</div>
										
										<div class="item ">
											<div class="item-inner">
												<div class="image-client pull-left">
													<a href="#" title="">
														<img width="127" height="127" src="../static/assets/images/1903/tm2.png" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" />
													</a>
												</div>
												
												<div class="client-say-info">
													<div class="client-comment">
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit....						
													</div>
													
													<div class="name-client">
														<h2>
															<a href="#" title="">Taylor Hill</a>
														</h2>
														
														<p>Developer</p>
													</div>
												</div>
											</div>
											
											<div class="item-inner">
												<div class="image-client pull-left">
													<a href="#" title="">
														<img width="127" height="127" src="../static/assets/images/1903/tm3.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" />
													</a>
												</div>
												
												<div class="client-say-info">
													<div class="client-comment">
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit....						
													</div>
													
													<div class="name-client">
														<h2>
															<a href="#" title="">JOHN DOE</a>
														</h2>
														
														<p>Designer</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row vc_row-fluid footer-style1 vc_row-no-padding">
					<div class="container float vc_column_container vc_col-sm-12">
						<div class="vc_column-inner ">
							<div class="wpb_wrapper">
								<div class="vc_row vc_inner vc_row-fluid footer-top">
									<div class="vc_column_container vc_col-sm-8">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_text_column wpb_content_element ">
													<div class="wpb_wrapper">
														<div class="wrap-newletter">
															<h3>NEWSLETTER SIGNUP</h3>
															
															<div class="mc4wp-form">
																<div class="newsletter-content">
																	<input type="email" class="newsletter-email" name="EMAIL" placeholder="Your email" required="" />
																	<input class="newsletter-submit" type="submit" value="Subscribe" />
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="vc_column_container vc_col-sm-4">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class=" wpb_content_element ">
													<div class="wpb_wrapper">
														<div class="shop-social">
															<ul>
																<li>
																	<a href="https://www.facebook.com">
																		<i class="fa fa-facebook"></i>
																	</a>
																</li>
																
																<li>
																	<a href="https://twitter.com">
																		<i class="fa fa-twitter"></i>
																	</a>
																</li>
																
																<li>
																	<a href="https://plus.google.com">
																		<i class="fa fa-google-plus"></i>
																	</a>
																</li>
																
																<li>
																	<a href="https://www.linkedin.com">
																		<i class="fa fa-linkedin"></i>
																	</a>
																</li>
																
																<li>
																	<a href="https://www.pinterest.com/">
																		<i class="fa fa-pinterest-p"></i>
																	</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="vc_row vc_inner vc_row-fluid footer-bottom">
									<div class="item-res vc_column_container vc_col-sm-6 vc_col-lg-4 vc_col-md-4 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_text_column wpb_content_element ">
													<div class="wpb_wrapper">
														<div class="ya-logo">
															<a href="index.jsp">
																<img src="../static/assets/images/icons/logo-footer.png" alt="logo" />
															</a>
														</div>
													</div>
												</div>
												
												<div class=" wpb_content_element ">
													<div class="wpb_wrapper">
														<div class="infomation">
															<p>
																Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
															</p>
															
															<div class="info-support">
																<ul>
																   <li>No 1123, Marmora Road, Glasgow, D04 89GR.</li>
																   <li>(801) 2345 - 6788 / (801) 2345 - 6789</li>
																   <li><a href="mailto:contact@etrostore.com">support@etrostore.com</a></li>
																</ul>
															</div>
															
															<div class="store">
																<a href="#">
																	<img src="../static/assets/images/1903/app-store.png" alt="store" title="store" />
																</a>
																
																<a href="#">
																	<img src="../static/assets/images/1903/google-store.png" alt="store" title="store" />
																</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								 
									<div class="item-res vc_column_container vc_col-sm-6 vc_col-lg-2 vc_col-md-2 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="vc_wp_custommenu wpb_content_element">
													<div class="widget widget_nav_menu">
														<h2 class="widgettitle">Support</h2>
														
														<ul id="menu-support" class="menu">
															<li class="menu-product-support">
																<a class="item-link" href="#">
																	<span class="menu-title">Product Support</span>
																</a>
															</li>
															
															<li class="menu-pc-setup-support-services">
																<a class="item-link" href="#">
																	<span class="menu-title">PC Setup & Support Services</span>
																</a>
															</li>
															
															<li class="menu-extended-service-plans">
																<a class="item-link" href="#">
																	<span class="menu-title">Extended Service Plans</span>
																</a>
															</li>
															
															<li class="menu-community">
																<a class="item-link" href="#">
																	<span class="menu-title">Community</span>
																</a>
															</li>
															
															<li class="menu-product-manuals">
																<a class="item-link" href="#">
																	<span class="menu-title">Product Manuals</span>
																</a>
															</li>
															
															<li class="menu-product-registration">
																<a class="item-link" href="#">
																	<span class="menu-title">Product Registration</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								  
									<div class="item-res vc_column_container vc_col-sm-6 vc_col-lg-2 vc_col-md-2 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="vc_wp_custommenu wpb_content_element">
													<div class="widget widget_nav_menu">
														<h2 class="widgettitle">Your Links</h2>
														
														<ul id="menu-your-links" class="menu">
															<li class="menu-my-account">
																<a class="item-link" href="my_account.html">
																	<span class="menu-title">My Account</span>
																</a>
															</li>
															
															<li class="menu-order-tracking">
																<a class="item-link" href="#">
																	<span class="menu-title">Order Tracking</span>
																</a>
															</li>
															
															<li class="menu-watch-list">
																<a class="item-link" href="#">
																	<span class="menu-title">Watch List</span>
																</a>
															</li>
															
															<li class="menu-customer-service">
																<a class="item-link" href="#">
																	<span class="menu-title">Customer Service</span>
																</a>
															</li>
															
															<li class="menu-returns-exchanges">
																<a class="item-link" href="#">
																	<span class="menu-title">Returns / Exchanges</span>
																</a>
															</li>
															
															<li class="menu-faqs">
																<a class="item-link" href="#">
																	<span class="menu-title">FAQs</span>
																</a>
															</li>
															
															<li class="menu-financing">
																<a class="item-link" href="#">
																	<span class="menu-title">Financing</span>
																</a>
															</li>
															
															<li class="menu-card">
																<a class="item-link" href="#">
																	<span class="menu-title">Card</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								   
									<div class="item-res vc_column_container vc_col-sm-6 vc_col-lg-4 vc_col-md-4 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class=" wpb_content_element ">
													<div class="wpb_wrapper">
														<div class="sp-map">
															<div class="title">
																<h2>find a store</h2>
															</div>
															
															<img src="../static/assets/images/1903/map.jpg" alt="map" title="map" />
															
															<a href="#" class="link-map">Store locator</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
						
								<div class="vc_wp_custommenu wpb_content_element wrap-cus">
									<div class="widget widget_nav_menu">
										<ul id="menu-infomation" class="menu">
											<li class="menu-about-us">
												<a class="item-link" href="about_us.html">
													<span class="menu-title">About Us</span>
												</a>
											</li>
											
											<li class="menu-customer-service">
												<a class="item-link" href="#">
													<span class="menu-title">Customer Service</span>
												</a>
											</li>
											
											<li class="menu-privacy-policy">
												<a class="item-link" href="#">
													<span class="menu-title">Privacy Policy</span>
												</a>
											</li>
											
											<li class="menu-site-map">
												<a class="item-link" href="#">
													<span class="menu-title">Site Map</span>
												</a>
											</li>
											
											<li class="menu-orders-and-returns">
												<a class="item-link" href="#">
													<span class="menu-title">Orders and Returns</span>
												</a>
											</li>
											
											<li class="menu-contact-us">
												<a class="item-link" href="contact_us.html">
													<span class="menu-title">Contact Us</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="vc_row-full-width vc_clearfix"></div>
			</div>
			
			<div class="footer-copyright style1">
				<div class="container">
					<!-- Copyright text -->
					<div class="copyright-text pull-left">
						<p>Etro Store - Premium Multipurpose HTML5/CSS3 Theme Designed by <a href="http://www.smartaddons.com">SmartAddons.Com</a>.</p>
					</div>
					
					<div class="sidebar-copyright pull-right">
						<div class="widget-1 widget-first widget text-4 widget_text">
							<div class="widget-inner">
								<div class="textwidget">
									<div class="payment">
										<a href="#">
											<img src="../static/assets/images/1903/paypal.png" alt="payment" title="payment" />
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
   
	<!-- DIALOGS -->
   <div class="modal fade" id="login_form" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog block-popup-login">
			<a href="javascript:void(0)" title="Close" class="close close-login" data-dismiss="modal">Close</a>
         
			<div class="tt_popup_login">
				<strong>Sign in Or Register</strong>
			</div>
         
			<div class="block-content">
				<div class="col-reg registered-account">
					<div class="email-input">
						<input type="text" class="form-control input-text username" name="username" id="username" placeholder="Username" />
					</div>
					
					<div class="pass-input">
						<input class="form-control input-text password" type="password" placeholder="Password" name="password" id="password" />
					</div>
					
					<div class="ft-link-p">
						<a href="lost_password.html" title="Forgot your password">Forgot your password?</a>
					</div>
					
					<div class="actions">
						<div class="submit-login">
							<input type="submit" class="button btn-submit-login" name="login" value="Login" />
						</div>
					</div>
				</div>
				
				<div class="col-reg login-customer">
					<h2>NEW HERE?</h2>
					
					<p class="note-reg">Registration is free and easy!</p>
					
					<ul class="list-log">
						<li>Faster checkout</li>
						
						<li>Save multiple shipping addresses</li>
						
						<li>View and track orders and more</li>
					</ul>
					
				<a href="" title="Register"
							class="btn-reg-popup"   data-toggle="modal"
															data-target="#register_form">Create an account</a>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="modal fade" id="register_form" tabindex="-1" role="dialog"
		aria-hidden="true">
  		<div class="modal-dialog block-popup-login">
			<a href="javascript:void(0)" title="Close" class="close close-login"
				data-dismiss="modal">Close</a>

			<div class="tt_popup_login">
				<strong>Sign in Or Register</strong>
			</div>

			<form  action="check" method="post" onsubmit="return Istrue1()" class="register">
				<div class="block-content">
					<div style="border-right:0px; min-height:200px;" class="col-reg registered-account">
					<span id="hei"></span>
						<div class="email-input">
							<input type="text" class="form-control input-text username"
								name="reusername" id="reusername" placeholder="Username" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" onblur="getJQ('reusername')"/>
						</div>
						<div class="pass-input">
							<input class="form-control input-text password" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" type="password"
								onblur="pwdlen()" placeholder="Password" name="repassword" id="repassword" />
						</div>
						<div class="pass-input">
							<input class="form-control input-text password" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" type="password"
								placeholder="again Password" onblur="pwdCh()" name="repassword1" id="repassword1"/>
						</div>
							<div style="width:100px;height:40px;color:red;" id="tip"></div>
						<div class="actions">
							<div  class="submit-login">
								<input  type="submit" id="re"  class="button btn-submit-login"
									name="register" value="register" />
							</div>
						</div>
					</div>

					<div class="col-reg login-customer">
							<div class="pass-input">
							<div class="pas-c"></div>
							<input class="form-control input-text password" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" type="text"
								placeholder="XXX@XXX.COM" name="email"  id="remail" onblur="ema()"  />
						</div>
						<div class="pass-input ">
						<div class="pas-d"></div>
							<input class="form-control input-text password" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" type="text"
								placeholder="address" name="address" id="readress" />
						</div>
						<div class="">
						<div class="pas-e"></div>
							<input style="margin:4px 55px 11px;" class="radio1" type="radio" name="sex" id="radio" value="1" checked="checked"/><span id="title" >Boy</span>
							<input class="radio1" type="radio"name="sex" id="radio"  value="0"/><span id="title1">Girl</span>
						</div>
					
					</div>
				</div>
			</form>
			<div class="clear"></div>
		</div>
  </div>
	<a id="etrostore-totop" href="#"></a>	
	
	<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery/js.cookie.min.js"></script>
	
	<!-- OPEN LIBS JS -->
	<script type="text/javascript" src="js/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/slick-1.6.0/slick.min.js"></script>
	
	<script type="text/javascript" src="js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
	<script type="text/javascript" src="js/isotope/isotope.js"></script>
	<script type="text/javascript" src="js/fancybox/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="js/sw_woocommerce/category-ajax.js"></script>
	<script type="text/javascript" src="js/sw_woocommerce/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="js/js_composer/js_composer_front.min.js"></script>
	
	<script type="text/javascript" src="js/plugins.js"></script>
	<script type="text/javascript" src="js/megamenu.min.js"></script>
	<script type="text/javascript" src="js/main.min.js"></script>
   
	<script type="text/javascript">
		var sticky_navigation_offset_top = $("#header .header-bottom").offset().top;
		var sticky_navigation = function(){
									var scroll_top = $(window).scrollTop();
									if (scroll_top > sticky_navigation_offset_top) {
										$("#header .header-bottom").addClass("sticky-menu");
										$("#header .header-bottom").css({ "top":0, "left":0, "right" : 0 });
									} else {
										$("#header .header-bottom").removeClass("sticky-menu");
									}
								};
		sticky_navigation();
		$(window).scroll(function() {
			sticky_navigation();
		});
		
		$(document).ready (function () {
			$( ".show-dropdown" ).each(function(){
				$(this).on("click", function(){
					$(this).toggleClass("show");
					var $element = $(this).parent().find( "> ul" );
					$element.toggle( 300 );
				});
			});
		});
   </script>
   <script type="text/javascript">
 function  doPost(to,p){
	   var myForm =document.createElement("form");
	   myForm.method="post";
	   myForm.action=to;
	   for(var i in p ){
		   var input =document.createElement("input");
		   input.setAttribute("name",i);
		   input.setAttribute("value",p[i]);
		   myForm.appendChild(input);
		
	   }
	   document.body.appendChild(myForm);
	   myForm.submit();
	   document.body.removeChild(myForm);
	   
   }
 
   
   </script>
   </body>
</html>