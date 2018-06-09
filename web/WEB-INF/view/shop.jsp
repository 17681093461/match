<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>	
	<title>Products Archive</title>
	<meta charset="utf-8" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- GOOGLE WEB FONTS -->
	<link rel="stylesheet" href="../static/assets/css/font-awesome.min.css">
	
	<!-- BOOTSTRAP 3.3.7 CSS -->
	<link rel="stylesheet" href="../static/assets/css/bootstrap.min.css" />
	
	<!-- SLICK v1.6.0 CSS -->
	<link rel="stylesheet" href="../static/assets/css/slick-1.6.0/slick.css" />
	
	<link rel="stylesheet" href="../static/assets/css/jquery.fancybox.css" />
	<link rel="stylesheet" href="../static/assets/css/yith-woocommerce-compare/colorbox.css" />
	<link rel="stylesheet" href="../static/assets/css/owl-carousel/owl.carousel.min.css" />
	<link rel="stylesheet" href="../static/assets/css/owl-carousel/owl.theme.default.min.css" />
	<link rel="stylesheet" href="../static/assets/css/js_composer/js_composer.min.css" />
	<link rel="stylesheet" href="../static/assets/css/woocommerce/woocommerce.css" />
	<link rel="stylesheet" href="../static/assets/css/yith-woocommerce-wishlist/style.css" />
	
<link rel="stylesheet" href="../static/assets/css/a.css"/>
	<link rel="stylesheet" href="../static/assets/css/custom.css" />
	<link rel="stylesheet" href="../static/assets/css/app-orange.css" id="theme_color" />
	<link rel="stylesheet" href="" id="rtl" />
	<link rel="stylesheet" href="../static/assets/css/app-responsive.css" />
	
</head>

<body class="archive post-type-archive woocommerce post-type-archive-product">

     
<c:set var="l" value="${sessionScope.user}"></c:set>

	<div class="body-wrapper theme-clearfix">
		<header id="header" class="header header-style1">
			<div class="header-top clearfix">
				<div class="container">
					<div class="rows">
						<!-- SIDEBAR TOP MENU -->
						<div class="pull-left top1">
							<c:if test="${!empty l}">
							<c:set var="len">${l.username.length()}</c:set>
						
							<a class="dd"  href=""> <c:out value="${l.username}"></c:out></a><a class="dd" style="left:${len}px;font-size:12px;" href="http://127.0.0.1:8888/Connjsp1/rem">&nbsp;&nbsp;&nbsp;注销</a>
							</c:if>
							<div class="widget text-3 widget_text pull-left">
								<div class="widget-inner">
									<div class="textwidget">
										
									</div>
								</div>
							</div>
							
							<div class="widget woocommerce_currency_converter-2 widget_currency_converter pull-left">
							
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
													<a class="item-link" href="my_account.jsp">
														<span class="menu-title">My Account</span>
													</a>
												</li>
												
												<li class="menu-cart">
													<a class="item-link" href="javascript:addcart('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})">
														<span class="menu-title">Cart</span>
													</a>
												</li>
												
												<li class="menu-checkout">
													<a class="item-link" href="checkout.jsp">
														<span class="menu-title">Checkout</span>
													</a>
												</li>
												
												<li class="menu-wishlist">
													<a class="item-link" href="#">
														<span class="menu-title">Wishlist</span>
													</a>
												</li>
											</ul>
										</div>
									</div>
									
									<div class="widget-2 widget-last widget sw_top-4 sw_top">
										<div class="widget-inner">
										
											<div class="top-login">
											<c:if test="${empty l}">
												<div class="div-logined">
													<ul>
														<li>
															<a href="javascript:void(0);" data-toggle="modal" data-target="#login_form">
																<span>Login</span>
															</a>
															<span class="wg">Welcome Guest</span>
														</li>
													</ul>
												</div>
													</c:if>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="pull-left top2">
								<div class="widget-1 widget-first widget nav_menu-2 widget_nav_menu">
									<div class="widget-inner">
										<ul id="menu-checkout" class="menu">
											<li class="menu-checkout">
												<a class="item-link" href="checkout.jsp">
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
											<form method="get" action="">
												<div>
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
													
													<button type="submit" title="Search" class="fa fa-search button-search-pro form-button"></button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
							
							<div class="widget sw_top-3 sw_top pull-left" li="li3">
								<div class="widget-inner">
									<div class="top-form top-form-minicart etrostore-minicart pull-right">
										<div class="top-minicart-icon pull-right">
											<i class="fa fa-shopping-cart"></i>
											<a class="cart-contents"  href="javascript:addcart('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})" title="View your shopping cart">
												<span class="minicart-number" >2</span>
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
															src="${gl.pic}"
															class="attachment-100x100 size-100x100 wp-post-image"
															alt=""
															sizes="(max-width: 100px) 100vw, 100px" />
													</a>

														<div class="detail-item">
															<div class="product-details">
																<h4>
																	<a class="title-item" href="simple_product.jsp"><c:out value="${gl.name}"/></a>
																</h4>

																<div class="product-price">
																	<span class="price"> <span
																		class="woocommerce-Price-amount amount"> <span
																			class="woocommerce-Price-currencySymbol">¥</span><span><c:out value="${gl.price}"/></span>
																	</span>
																	</span>

																	<div class="qty">
																		<span class="qty-number"><c:out value="${gl.company}"/></span>
																	</div>
																</div>

																<div class="product-action clearfix">
																	<a href="javascript:doPost('delet',{'id':'${gl.cid}','userid':'${l.id}'})" class="btn-remove" title="Remove this item">
																		<span class="fa fa-trash-o"></span>
																	</a> <a class="btn-edit" href="javascript:addcart('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})"
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
																	<span class="woocommerce-Price-currencySymbol">$</span><span></span>
																</span>
															</span>
														</span>			
													</div>
													
													<div class="cart-links clearfix">
														<div class="cart-link">
															<a href="javascript:addcart('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})" title="Cart">View Cart</a>
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
											<a class="item-link" href="#">
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
												<li><a href="index.jsp">Home</a></li>
												<li><a href="cartEach?name=${l.getUsername()}&userid=${l.id}">Cart</a></li>
												<li><a href="checkout.jsp">Checkout</a></li>
												<li><a href="my_account.jsp">My Account</a></li>
												<li><a href="shop.jsp">Shop</a></li>
												<li><a href="simple_product.jsp">Simple Product</a></li>
												<li><a href="about_us.jsp">About Us</a></li>
												<li><a href="contact_us.jsp">Contact Us</a></li>
											</ul>
										</div>
									</div>
								
									<ul id="menu-primary-menu-1" class="nav nav-pills nav-mega etrostore-mega etrostore-menures">
										<li><a href="index.jsp">Home</a></li>
										<li><a href="javascript:addcart('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})">Cart</a></li>
										<li><a href="checkout.jsp">Checkout</a></li>
										<li><a href="my_account.jsp">My Account</a></li>
										<li><a href="shop.jsp">Shop</a></li>
										<li><a href="about_us.jsp">About Us</a></li>
										<li><a href="contact_us.jsp">Contact Us</a></li>
									</ul>
								</div>
							</nav>
						</div>
						<!-- /Primary navbar -->
				  
						<div class="top-form top-form-minicart etrostore-minicart pull-right">
							<div class="top-minicart-icon pull-right">
								<i class="fa fa-shopping-cart"></i>
								<a class="cart-contents" href="javascript:addcart('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})" title="View your shopping cart">
									<span class="minicart-number">2</span>
								</a>
							</div>
						 
							<div class="wrapp-minicart" id="li2">
								<div class="minicart-padding">
									<div class="number-item">
										There are <span>items</span> in your cart
									</div>
									
									<ul class="minicart-content" >
										<c:forEach var="gl" items="${sessionScope.cart}">	
													<li><a href="simple_product.jsp" class="product-image">
															<img width="100" height="100"
															src="${gl.pic}"
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
																			class="woocommerce-Price-currencySymbol">¥</span><span><c:out value="${gl.price}"/></span>
																	</span>
																	</span>

																	<div class="qty">
																		<span class="qty-number"><c:out value="${gl.count}"/></span>
																	</div>
																</div>

																<div class="product-action clearfix">
																	<a href="javascript:doPost('delet',{'id':'${gl.cid}','userid':'${l.id}'})" class="btn-remove" title="Remove this item">
																		<span class="fa fa-trash-o"></span>
																	</a> <a class="btn-edit" href="javascript:addcart('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})"
																		title="View your shopping cart"> <span
																		class="fa fa-pencil"></span>
																	</a>
																</div>
															</div>
														</div></li>
</c:forEach>
									</ul>
									
									<div class="cart-checkout" >
										<div class="price-total">
											<span class="label-price-total">Total</span>
											
											<span class="price-total-w">
												<span class="price">
													<span class="woocommerce-Price-amount amount">
														<span class="woocommerce-Price-currencySymbol">$</span><span ></span>
													</span>
												</span>
											</span>			
										</div>
										
										<div class="cart-links clearfix">
											<div class="cart-link">
												<a href="javascript:addcart('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})" title="Cart">View Cart</a>
											</div>
											
											<div class="checkout-link">
												<a href="checkout.jsp" title="Check Out">Check Out</a>
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
										<form role="search" method="get" class="form-search searchform" action="">
											<label class="hide"></label>
											<input type="text" value="" name="s" class="search-query" placeholder="Keyword here..." />
											<button type="submit" class="button-search-pro form-button">Search</button>
										</form>
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
					<h1>Products</h1>
					
					<div class="bread">
						<div class="breadcrumbs theme-clearfix">
							<div class="container">
								<ul class="breadcrumb">
									<li>
										<a href="index.jsp">Home</a>
										<span class="go-page"></span>
									</li>
									
									<li class="active">
										<span>Products</span>
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
				<div id="contents" class="content col-lg-9 col-md-8 col-sm-8" role="main">
					<div class="listing-top">
						<div class="widget-1 widget-first widget rev-slider-widget-2 widget_revslider">
							<div class="widget-inner">
								<!-- OWL SLIDER -->
								<div class="wpb_revslider_element wpb_content_element no-margin">
									<div class="vc_column-inner ">
										<div class="wpb_wrapper">
											<div class="wpb_revslider_element wpb_content_element">
												<div id="main-slider" class="fullwidthbanner-container" style="position:relative; width:100%; height:auto; margin-top:0px; margin-bottom:0px">
													<div class="module slideshow no-margin">
														<div class="item">
															<a href="simple_product.jsp"><img src="../static/assets/images/1903/slider-shop.jpg" alt="slider1" class="img-responsive" height="559"></a>
														</div>
														<div class="item">
															<a href="simple_product.jsp"><img src="../static/assets/images/1903/slider-shop.jpg" alt="slider2" class="img-responsive" height="559"></a>
														</div>
													</div>
													<div class="loadeding"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- OWL LIGHT SLIDER -->
							</div>
						</div>
					  
						<div class="widget-2 widget-last widget sw_brand-2 sw_brand">
							<div class="widget-inner">
								<div id="sw_brand_01" class="responsive-slider sw-brand-container-slider clearfix" data-lg="5" data-md="4" data-sm="3" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1" data-interval="5000" data-autoplay="false">
									<div class="resp-slider-container">
										<div class="slider responsive">
											<div class="item item-brand-cat">
												<div class="item-image">
													<a href="shop.jsp"><img width="134" height="70" src="../static/assets/images/1903/Brand_1.jpg" class="attachment-173x91 size-173x91" alt=""></a>
												</div>
											</div>
										 
											<div class="item item-brand-cat">
												<div class="item-image">
													<a href="http://demo.smartaddons.com/templates/html/etrostore/shop.jsp-books"><img width="134" height="70" src="../static/assets/images/1903/br1.jpg" class="attachment-173x91 size-173x91" alt=""></a>
												</div>
											</div>
										 
											<div class="item item-brand-cat">
												<div class="item-image">
													<a href="shop.jsp"><img width="134" height="70" src="../static/assets/images/1903/br2.jpg" class="attachment-173x91 size-173x91" alt=""></a>
												</div>
											</div>
										 
											<div class="item item-brand-cat">
												<div class="item-image">
													<a href="shop.jsp"><img width="134" height="70" src="../static/assets/images/1903/Brand_1.jpg" class="attachment-173x91 size-173x91" alt=""></a>
												</div>
											</div>
										 
											<div class="item item-brand-cat">
												<div class="item-image">
													<a href="shop.jsp"><img width="134" height="70" src="../static/assets/images/1903/Brand_10.jpg" class="attachment-173x91 size-173x91" alt=""></a>
												</div>
											</div>
										 
											<div class="item item-brand-cat">
												<div class="item-image">
													<a href="shop.jsp"><img width="134" height="70" src="../static/assets/images/1903/Brand_1.jpg" class="attachment-173x91 size-173x91" alt=""></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="container">
						<div id="content" role="main">
							<!--  Shop Title -->
							<div class="products-wrapper">
								<div class="row-fix clearfix">
							
						
								</div>
								
								<div class="products-nav clearfix">
									<div class="view-mode-wrap pull-left clearfix">
										<div class="view-mode">
											<a href="javascript:void(0)" class="grid-view active" title="Grid view"><span>Grid view</span></a>
											<a href="javascript:void(0)" class="list-view" title="List view"><span>List view</span></a>
										</div>
									</div>
									<div class="catalog-ordering">
										<div class="orderby-order-container clearfix">
											<ul class="orderby order-dropdown pull-left">
												<li>
													<span class="current-li"><span class="current-li-content"><a>Sort by Default</a></span></span>
													<ul>
														<li class="current"><a href="#">Sort by Default</a></li>
														<li class=""><a href="#">Sort by Popularity</a></li>
														<li class=""><a href="#">Sort by Rating</a></li>
														<li class=""><a href="#">Sort by Date</a></li>
														<li class=""><a href="#">Sort by Price</a></li>
													</ul>
												</li>
											</ul>
											
											<ul class="order pull-left">
												<li class="asc"><a href="#"><i class="fa fa-long-arrow-down"></i></a></li>
											</ul>
											
											<div class="product-number pull-left clearfix">
												<span class="show-product pull-left">Show </span>
												<ul class="sort-count order-dropdown pull-left">
													<li>
														<span class="current-li" style=" text-align:center; text-indent:-10px;"><c:out value="${model.pageSize}"/></span>
														<ul>
															<li class="current"><a href="shop.jsp?pageSize=12">12</a></li>
															<li class=""><a href="shop.jsp?pageSize=24">24</a></li>
															<li class=""><a href="shop.jsp?pageSize=36">36</a></li>
														</ul>
													</li>
												</ul>
											</div>
										</div>
									</div>
									
									<nav class="woocommerce-pagination pull-right">
										<span class="note">Page:</span>
										<ul class="page-numbers">
											<c:forEach var="page" items="${model.pages}">
											<li><a class="page-numbers" href="shop.jsp?pageNo=${page}&pageSize=${sessionScope.model.pageSize}">${page}</a></li>
				
											<li><a class="next page-numbers" href="">?</a></li>
											</c:forEach>
										</ul>
									</nav>
								</div>
								
								<div class="clear"></div>
							
								<ul class="products-loop row grid clearfix">
<!-- 	1111111111111111111111111111111111111111111111111						11111111111111111111111111111111111111111111	
 -->							<c:forEach var="shoplist" items="${model.list}">
									
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
												
													<span class="onsale">Sale!</span>
													<c:choose>
												
													<c:when  test="${ empty l.id}">
													<c:set var="userid" value="null"></c:set>
													</c:when>
													<c:otherwise>
													<c:set var="userid" value="${l.id}"></c:set>
													</c:otherwise>
														</c:choose>
													<a href="javascript:doPost('simp', {'img':'${shoplist.gimgPath}','name':'${shoplist.gname}','price':'${shoplist.price}',des:'${shoplist.describe}',userid:'${l.id}',hprice:'${shoplist.hprice }',gid:'${ shoplist.id}'})"  >
														<div class="product-thumb-hover">
														
															<img width="300" height="300" src='<c:out value="${shoplist.gimgPath}"/>' class="attachment-shop_catalog size-shop_catalog wp-post-image" alt=""  sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																					
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
													
														<a   href="javascript:addcart('cart',{'userid':'${l.id}','gid':'${shoplist.id}','name':'${shoplist.gname}','img':'${shoplist.gimgPath}','price':'${shoplist.price}',userid:'${userid}',hprice:'${shoplist.hprice }'})"  class="button product_type_simple  ajax_add_to_cart" title="Add to Cart" onclick="return true">Add to cart</a>
														
														<a href="" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="#" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="../static/assets/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
															</div>
														   
															<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																<span class="feedback">Product added!</span>
																<a href="#" rel="nofollow">Browse Wishlist</a>
															</div>
															
															<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																<span class="feedback">The product is already in the wishlist!</span>
																<a href="#" rel="nofollow">Browse Wishlist</a>
															</div>
															
															<div style="clear:both"></div>
															<div class="yith-wcwl-wishlistaddresponse"></div>
														</div>
														
														<div class="clear"></div>
														<a href="#" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
												
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"><span style="width: 63px"></span></div>
													</div>
													
													<h4><a href="" title="Cleaner with bag"><c:out value="${shoplist.gname}"/></a></h4>
													
													<span class="item-price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">¥</span><c:out value="${shoplist.hprice}"></c:out></span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">¥</span><c:out value="${shoplist.price}"></c:out></span></ins></span>
													
													<div class="item-description"><c:out value="${shoplist.describe}"></c:out></div>
											   
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="javascript:addcart('cart',{'userid':'${l.id}','gid':'${shoplist.id}','name':'${shoplist.gname}','img':'${shoplist.gimgPath}','price':'${shoplist.price}',userid:'${userid}',hprice:'${shoplist.hprice }'})"  class="button product_type_simple ajax_add_to_cart" style="pointer-events:auto;"  title="Add to Cart" onclick="return true" >Add to cart</a>
														
													<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="#" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="../static/assets/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
															</div>
														   
															<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																<span class="feedback">Product added!</span>
																<a href="#" rel="nofollow">Browse Wishlist</a>
															</div>
															
															<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																<span class="feedback">The product is already in the wishlist!</span>
																<a href="#" rel="nofollow">Browse Wishlist</a>
															</div>
															
															<div style="clear:both"></div>
															<div class="yith-wcwl-wishlistaddresponse"></div>
														</div>
														
														<div class="clear"></div>
														<a href="#" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
									</c:forEach>
									
								</ul>
							
								<div class="clear"></div>
								
								<div class="products-nav clearfix">
									<div class="view-mode-wrap pull-left clearfix">
										<div class="view-mode">
											<a href="javascript:void(0)" class="grid-view active" title="Grid view"><span>Grid view</span></a>
											<a href="javascript:void(0)" class="list-view" title="List view"><span>List view</span></a>
										</div>
									</div>
								  
									<div class="catalog-ordering">
										<div class="orderby-order-container clearfix">
											<ul class="orderby order-dropdown pull-left">
												<li>
													<span class="current-li"><span class="current-li-content"><a>Sort by Default</a></span></span>
													<ul>
														<li class="current"><a href="#">Sort by Default</a></li>
														<li class=""><a href="#">Sort by Popularity</a></li>
														<li class=""><a href="#">Sort by Rating</a></li>
														<li class=""><a href="#">Sort by Date</a></li>
														<li class=""><a href="#">Sort by Price</a></li>
													</ul>
												</li>
											</ul>
											
											<ul class="order pull-left">
												<li class="asc"><a href="#"><i class="fa fa-long-arrow-down"></i></a></li>
											</ul>
											
											<div class="product-number pull-left clearfix">
												<span class="show-product pull-left">Show </span>
												<ul class="sort-count order-dropdown pull-left">
													<li>
														<span class="current-li" style=" text-align:center; text-indent:-10px;"><c:out value="${model.pageSize}"/></span>
														<ul>
															<li class="current"><a href="shop.jsp?pageSize=12">12</a></li>
															<li class=""><a href="shop.jsp?pageSize=24">24</a></li>
															<li class=""><a href="shop.jsp?pageSize=36">36</a></li>
														</ul>
													</li>
												</ul>
											</div>
										</div>
									</div>
								   
									<nav class="woocommerce-pagination pull-right">
										<span class="note">Page:</span>						
										<ul class="page-numbers">
											<c:forEach var="page" items="${model.pages}">
											<li><a class="page-numbers" href="shop.jsp?pageNo=${page}&pageSize=${sessionScope.model.pageSize}">${page}</a></li>
				
											<li><a class="next page-numbers" href="">?</a></li>
											</c:forEach>
										</ul>
										
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<aside id="right" class="sidebar col-lg-3 col-md-4 col-sm-4">
					<div class="widget-1 widget-first widget woocommerce_product_categories-3 woocommerce widget_product_categories">
						<div class="widget-inner">
							<div class="block-title-widget">
								<h2><span>Categories</span></h2>
							</div>
							
							<ul class="product-categories">
								<li class="cat-item"><a href="shop.jsp">Accessories</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.jsp">Accessories</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Accessories for Tablet</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.jsp">Air Conditional</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.jsp">Appliances</a> <span class="count">(6)</span></li>
								<li class="cat-item"><a href="shop.jsp">Batteries &amp; Chargers</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Blender</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.jsp">Cameras &amp; Accessories</a> <span class="count">(3)</span></li>
								<li class="cat-item"><a href="shop.jsp">Cameras &amp; Camcorders</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.jsp">Computers &amp; Laptops</a> <span class="count">(6)</span></li>
								<li class="cat-item"><a href="shop.jsp">Computers &amp; Networking</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Electronic Component</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.jsp">Electronics</a> <span class="count">(8)</span></li>
								<li class="cat-item"><a href="shop.jsp">Headphone</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Home Appliances</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Home Furniture</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Household Goods</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.jsp">Laptop Asus</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Laptop Dell</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Laptop HP</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.jsp">Laptop MSI</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.jsp">Laptops &amp; Accessories</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.jsp">Macbook</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Microwave</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Mixer</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Mp3 Player Accessories</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Paper Towel</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.jsp">Smartphones &amp; Tablet</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.jsp">Sponge</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.jsp">Television</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.jsp">Television</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.jsp">Televisions</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.jsp">Vacuum Cleaner</a> <span class="count">(2)</span></li>
							</ul>
						</div>
					</div>
					
					<div class="widget-2 widget woocommerce_layered_nav-4 woocommerce widget_layered_nav">
						<div class="widget-inner">
							<div class="block-title-widget">
								<h2><span>Colors</span></h2>
							</div>
							
							<ul>
								<li class="wc-layered-nav-term "><a href="shop.jsp">Black</a> <span class="count">(3)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.jsp">Blue</a> <span class="count">(2)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.jsp">Orange</a> <span class="count">(1)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.jsp">White</a> <span class="count">(3)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.jsp">Yellow</a> <span class="count">(1)</span></li>
							</ul>
						</div>
					</div>
					
					<div class="widget-3 widget woocommerce_layered_nav-5 woocommerce widget_layered_nav">
						<div class="widget-inner">
							<div class="block-title-widget">
								<h2><span>Size</span></h2>
							</div>
							
							<ul>
								<li class="wc-layered-nav-term "><a href="shop.jsp">L</a> <span class="count">(3)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.jsp">M</a> <span class="count">(1)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.jsp">S</a> <span class="count">(2)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.jsp">XL</a> <span class="count">(3)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.jsp">XS</a> <span class="count">(1)</span></li>
							</ul>
						</div>
					</div>
					
					<div class="widget-4 widget woocommerce_price_filter-3 woocommerce widget_price_filter">
						<div class="widget-inner">
							<div class="block-title-widget">
								<h2><span>price</span></h2>
							</div>
							
							<form method="get" action="">
								<div class="price_slider_wrapper">
									<div class="price_slider" style="display:none;"></div>
									<div class="price_slider_amount">
										<input type="text" id="min_price" name="min_price" value="10000" data-min="1" placeholder="Min price">
										<input type="text" id="max_price" name="max_price" value="650" data-max="30000" placeholder="Max price">
										<button type="submit"  class="button" onclick="way()" style="padding: 0 22px;">Filter</button>
											<span style="position:relative;left:12px;top:38px;width:62px;display:block;">当前区间  ¥</span><input type="text" disabled style="    background: rgba(77, 8, 243, 0.74);color:#fff;position:relative;width:60px;top:10px;left:-1px;text-align:center;" value="${requestScope.min}"/>
											<strong>&nbsp;<span style="position:relative;left:-4px;top:8px;">-</span> &nbsp;</strong>
											<input type="text" style="position:relative;width:60px;top:10px;background: rgba(236, 30, 9, 0.97);color:#fff;left:-10px;text-align:center" disabled value="${requestScope.max}"/>
											<input name="count" id="coun" value="1" hidden="hidden"/>
										<div class="price_label" style="display:block;">
											Price: <span class="from"><c:out value="${requestScope.min}"/></span> - <span class="to"><c:out value="${requestScope.max}"/></span>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</form>
						</div>
					</div>
					
					<div class="widget-5 widget etrostore_best_seller_product-3 etrostore_best_seller_product">
						<div class="widget-inner">
							<div class="block-title-widget">
								<h2><span>Best Sellers</span></h2>
							</div>
							
							<div id="best-seller-01" class="sw-best-seller-product">
								<ul class="list-unstyled">
									<li class="clearfix">
										<div class="item-img">
											<a href="simple_product.jsp" title="corned beef enim">
												<img width="180" height="180" src="../static/assets/images/1903/65-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="../static/assets/images/1903/65-180x180.jpg 180w, ../static/assets/images/1903/65-150x150.jpg 150w, ../static/assets/images/1903/65-300x300.jpg 300w, ../static/assets/images/1903/65.jpg 600w" sizes="(max-width: 180px) 100vw, 180px">
											</a>
										</div>
										
										<div class="item-content">
											<div class="reviews-content">
												<div class="star"></div>
												<div class="item-number-rating">
													0 Review(s)					
												</div>
											</div>
											
											<h4><a href="simple_product.jsp" title="corned beef enim">Corned beef enim</a></h4>
											
											<div class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>400.00</span></div>
										</div>
									</li>
								   
									<li class="clearfix">
										<div class="item-img">
											<a href="simple_product.jsp" title="philips stand">
												<img width="180" height="180" src="../static/assets/images/1903/62-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="../static/assets/images/1903/62-180x180.jpg 180w, ../static/assets/images/1903/62-150x150.jpg 150w, ../static/assets/images/1903/62-300x300.jpg 300w, ../static/assets/images/1903/62.jpg 600w" sizes="(max-width: 180px) 100vw, 180px">
											</a>
										</div>
										
										<div class="item-content">
											<div class="reviews-content">
												<div class="star"></div>
												<div class="item-number-rating">
													0 Review(s)					
												</div>
											</div>
											
											<h4><a href="simple_product.jsp" title="philips stand">Philips stand</a></h4>
											
											<div class="price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">¥</span>300.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">¥</span>250.00</span></ins></div>
										</div>
									</li>
								   
									<li class="clearfix">
										<div class="item-img">
											<a href="simple_product.jsp" title="Vacuum cleaner">
												<img width="180" height="180" src="../static/assets/images/1903/26-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="../static/assets/images/1903/26-180x180.jpg 180w, ../static/assets/images/1903/26-150x150.jpg 150w, ../static/assets/images/1903/26-300x300.jpg 300w, ../static/assets/images/1903/26.jpg 600w" sizes="(max-width: 180px) 100vw, 180px">
											</a>
										</div>
										
										<div class="item-content">
											<div class="reviews-content">
												<div class="star"><span style="width:52.5px"></span></div>
												<div class="item-number-rating">
													4 Review(s)					
												</div>
											</div>
											
											<h4><a href="simple_product.jsp" title="Vacuum cleaner">Vacuum cleaner</a></h4>
											
											<div class="price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>350.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>260.00</span></ins></div>
										</div>
									</li>
								   
									<li class="clearfix">
										<div class="item-img">
											<a href="simple_product.jsp" title="veniam dolore">
												<img width="180" height="180" src="../static/assets/images/1903/45-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="../static/assets/images/1903/45-180x180.jpg 180w, ../static/assets/images/1903/45-150x150.jpg 150w, ../static/assets/images/1903/45-300x300.jpg 300w, ../static/assets/images/1903/45.jpg 600w" sizes="(max-width: 180px) 100vw, 180px">
											</a>
										</div>
										
										<div class="item-content">
											<div class="reviews-content">
												<div class="star"><span style="width:35px"></span></div>
												<div class="item-number-rating">
													2 Review(s)					
												</div>
											</div>
											
											<h4><a href="simple_product.jsp" title="veniam dolore">Veniam dolore</a></h4>
											
											<div class="price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>250.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>190.00</span></ins></div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="widget-6 widget-last widget text-6 widget_text">
						<div class="widget-inner">
							<div class="textwidget">
								<div class="banner-sidebar">
									<img src="../static/assets/images/1903/banner-detail.jpg" title="banner" alt="banner">
								</div>
							</div>
						</div>
					</div>
				</aside>
			</div>
		</div>
		
		<footer id="footer" class="footer default theme-clearfix">
			<!-- Content footer -->
			<div class="container">
				<div class="vc_row wpb_row vc_row-fluid">
					<div class="wpb_column vc_column_container vc_col-sm-12">
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
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.�						
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
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.�						
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
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.�						
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
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.�						
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
				
				<div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid footer-style1 vc_row-no-padding">
					<div class="container float wpb_column vc_column_container vc_col-sm-12">
						<div class="vc_column-inner ">
							<div class="wpb_wrapper">
								<div class="vc_row wpb_row vc_inner vc_row-fluid footer-top">
									<div class="wpb_column vc_column_container vc_col-sm-8">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_text_column wpb_content_element ">
													<div class="wpb_wrapper">
														<div class="wrap-newletter">
															<h3>NEWSLETTER SIGNUP</h3>
															
															<form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-275" method="post" data-id="275" data-name="">
																<div class="mc4wp-form-fields">
																	<div class="newsletter-content">
																		<input type="email" class="newsletter-email" name="EMAIL" placeholder="Your email" required="" />
																		<input class="newsletter-submit" type="submit" value="Subscribe" />
																	</div>
																</div>
																<div class="mc4wp-response"></div>
															</form>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="wpb_column vc_column_container vc_col-sm-4">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_raw_code wpb_content_element wpb_raw_html">
													<div class="wpb_wrapper">
														<div class="shop-social">
															<ul>
																<li>
																	<a href="#">
																		<i class="fa fa-facebook"></i>
																	</a>
																</li>
																
																<li>
																	<a href="#">
																		<i class="fa fa-twitter"></i>
																	</a>
																</li>
																
																<li>
																	<a href="#">
																		<i class="fa fa-google-plus"></i>
																	</a>
																</li>
																
																<li>
																	<a href="#">
																		<i class="fa fa-linkedin"></i>
																	</a>
																</li>
																
																<li>
																	<a href="#">
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
								
								<div class="vc_row wpb_row vc_inner vc_row-fluid footer-bottom">
									<div class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-4 vc_col-md-4 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_text_column wpb_content_element ">
													<div class="wpb_wrapper">
														<div class="ya-logo">
															<a href="#">
																<img src="../static/assets/images/icons/logo-footer.png" alt="logo" />
															</a>
														</div>
													</div>
												</div>
												
												<div class="wpb_raw_code wpb_content_element wpb_raw_html">
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
								 
									<div class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-2 vc_col-md-2 vc_col-xs-12">
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
								  
									<div class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-2 vc_col-md-2 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="vc_wp_custommenu wpb_content_element">
													<div class="widget widget_nav_menu">
														<h2 class="widgettitle">Your Links</h2>
														
														<ul id="menu-your-links" class="menu">
															<li class="menu-my-account">
																<a class="item-link" href="my_account.jsp">
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
								   
									<div class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-4 vc_col-md-4 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_raw_code wpb_content_element wpb_raw_html">
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
												<a class="item-link" href="about_us.jsp">
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
												<a class="item-link" href="contact_us.jsp">
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
						<p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
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
	<div class="modal fade" id="search_form" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog block-popup-search-form">
			<form role="search" method="get" class="form-search searchform" action="">
				<input type="text" value="" name="s" class="search-query" placeholder="Enter your keyword..." />
				
				<button type="submit" class="fa fa-search button-search-pro form-button"></button>
				
				<a href="javascript:void(0)" title="Close" class="close close-search" data-dismiss="modal">X</a>
			</form>
		</div>
	</div>
	
   <div class="modal fade" id="login_form" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog block-popup-login">
			<a href="javascript:void(0)" title="Close" class="close close-login" data-dismiss="modal">Close</a>
         
			<div class="tt_popup_login">
				<strong>Sign in Or Register</strong>
			</div>
         
			<form action="login" method="post" class="login">
				<div class="block-content">
					<div class="col-reg registered-account">
						<div class="email-input">
							<input type="text" class="form-control input-text username" name="username" id="username" placeholder="Username" />
						</div>
						
						<div class="pass-input">
							<input class="form-control input-text password" type="password" placeholder="Password" name="password" id="password" />
						</div>
						
						<div class="ft-link-p">
							<a href="#" title="Forgot your password">Forgot your password?</a>
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
						
						<a href="" title="Register" data-toggle="modal" data-target="#register_form" class="btn-reg-popup">Create an account</a>
					</div>
				</div>
			</form>
			<div class="clear"></div>
		</div>
	</div>
	<div class="modal fade" id="register_form" tabindex="-1" role="dialog"
		aria-hidden="true">
  		<div class="modal-dialog block-popup-login">
			<a href="javascript:void(0)" title="Close" class="close close-login"
				data-dismiss="modal" >Close</a>

			<div class="tt_popup_login">
				<strong>Sign in Or Register</strong>
			</div>

			<form  action="check" method="post" onsubmit="return Istrue1()" class="register">
				<div class="block-content">
					<div style="border-right:0px; min-height:200px;" class="col-reg registered-account">
					<span id="hei"></span>
						<div class="email-input">
							<input type="text" class="form-control input-text username"
								name="reusername" id="reusername" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" placeholder="Username" onblur="getJQ('reusername')"/>
						</div>
						<div class="pass-input">
							<input class="form-control input-text password" type="password"
								placeholder="Password" onblur="pwdlen()" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" name="repassword" id="repassword" />
						</div>
						<div class="pass-input">
							<input class="form-control input-text password" type="password"
								placeholder="again Password" onblur="pwdCh()" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" name="repassword1" id="repassword1"/>
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
								placeholder="XXX@XXX.COM" onblur="ema()" name="email" id="remail" />
						</div>
						<div class="pass-input ">
						<div class="pas-d"></div>
							<input class="form-control input-text password" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" type="text"
								placeholder="address" name="address" id="readress" />
						</div>
						<div class="">
						<div class="pas-e"></div>
							<input style="margin:4px 55px 11px;" class="radio1" type="radio" name="sex" id="radio" value="1" checked="checked"/><span id="title" >Boy</span>
							<input class="radio1" type="radio"name="sex" id="radio1"  value="0"/><span id="title1">Girl</span>
						</div>
					
					</div>
				</div>
			</form>
			<div class="clear"></div>
		</div>
  </div>
	<a id="etrostore-totop" href="#"></a>	
	
	<div id="subscribe_popup" class="subscribe-popup" style="background: url(../static/assets/images/icons/bg_newsletter.jpg)">
		<div class="subscribe-popup-container">
			<h2>Join our newsletter</h2>
			<div class="description">Subscribe now to get 40% of on any product!</div>
			<div class="subscribe-form">
				<form id="mc4wp-form-2" class="mc4wp-form mc4wp-form-275" method="post" data-id="275" data-name="">
					<div class="mc4wp-form-fields">
						<div class="newsletter-content">
							<input type="email" class="newsletter-email" name="EMAIL" placeholder="Your email" required="" />
							<input class="newsletter-submit" type="submit" value="Subscribe" />
						</div>
					</div>
					<div class="mc4wp-response"></div>
				</form>		
			</div>
			
			<div class="subscribe-checkbox">
				<label for="popup_check">
					<input id="popup_check" name="popup_check" type="checkbox" />
					<span>Don't show this popup again!</span>
				</label>
			</div>
			
			<div class="subscribe-social">
				<div class="subscribe-social-inner">
					<a href="#" class="social-fb">
						<span class="fa fa-facebook"></span>
					</a>
					
					<a href="#" class="social-tw">
						<span class="fa fa-twitter"></span>
					</a>
					
					<a href="#" class="social-gplus">
						<span class="fa fa-google-plus"></span>
					</a>
					
					<a href="#" class="social-pin">
						<span class="fa fa-instagram"></span>
					</a>
					
					<a href="#" class="social-linkedin">
						<span class="fa fa-pinterest-p"></span>
					</a>				
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../static/assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="../static/assets/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="../static/pageJs/bootstrap.min.js"></script>
	<script type="text/javascript" src="../static/assets/jquery/js.cookie.min.js"></script>
	
	<!-- OPEN LIBS JS -->
	<script type="text/javascript" src="../static/assets/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="../static/assets/slick-1.6.0/slick.min.js"></script>
	
	<script type="text/javascript">
		/* <![CDATA[ */
			var woocommerce_price_slider_params = {"currency_symbol":"$","currency_pos":"left","min_price":"100","max_price":"500"};
		/* ]]> */
	</script>
	
	<script type="text/javascript" src="../static/pageJs/widget.min.js"></script>
	<script type="text/javascript" src="../static/pageJs/mouse.min.js"></script>
	<script type="text/javascript" src="../static/pageJs/slider.min.js"></script>
	<script type="text/javascript" src="../static/assets/js_composer/js_composer_front.min.js"></script>
	
	<script type="text/javascript" src="../static/assets/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
	<script type="text/javascript" src="../static/assets/sw_core/isotope.js"></script>
	<script type="text/javascript" src="../static/assets/sw_core/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="../static/assets/sw_woocommerce/category-ajax.js"></script>
	<script type="text/javascript" src="../static/assets/sw_woocommerce/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="../static/assets/woocommerce/price-slider.min.js"></script>
	
	<script type="text/javascript" src="../static/pageJs/plugins.js"></script>
	<script type="text/javascript" src="../static/pageJs/megamenu.min.js"></script>
	<script type="text/javascript" src="../static/pageJs/main.min.js"></script>
   		<script src="../static/pageJs/saveTip.js" type="text/javascript"></script>
   		<script src="../static/pageJs/saveTip.js" type="text/javascript"></script>
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
   
      <!--[if gte IE 9]><!-->
   <script type="text/javascript">
		var request, b = document.body, c = 'className', cs = 'customize-support', rcs = new RegExp('(^|\\s+)(no-)?'+cs+'(\\s+|$)');
		request = true;
      
      	b[c] = b[c].replace( rcs, ' ' );
      	// The customizer requires postMessage and CORS (if the site is cross domain)
      	b[c] += ( window.postMessage && request ? ' ' : ' no-' ) + cs;
   </script>
   <!--<![endif]-->
   
   <script type="text/javascript">

var id;
var datau;
var dataType;
var b=false;
lis();
function lis(){
	var smalltotal=0;
	var l=$("#li1 li").length;
	$(".cart-contents:eq(0)").text(l);
	$(".cart-contents:eq(1)").text(l);
	var cou=0;
	
	for(var i=0;i<l;i++){
		var c=$("#li1 .product-price span span span+span:eq("+i+")").text();

		var cou=$("#li1 .qty span:eq("+i+")").text();

		var t=parseInt(c,0);
		var j=0;
		j=t*cou;
		smalltotal+=j;
		$("#li1 .cart-checkout:eq(0) span+span span span span+span").text(smalltotal);
		$("#li2 .cart-checkout:eq(0) span+span span span span+span").text(smalltotal);
	}
	
}
function pwdlen(){
	var p=$('#repassword').val();
if(p.length<=8||p==''){
	$('#tip').html('密码长度至少9位');

	b=false;
}else{
	$('#tip').html('密码长度至少9位 已满足！');
	b=true;
}
}

function pwdCh(){
	var l=$('#repassword').val();
	var l1=$('#repassword1').val();
	if(l!=l1||(l==''||l1=='')){
		$('#tip').html('密码不一致');
		b=false;
	}else{
		$('#tip').html('密码验证通过');
		b=true;
	}
}
function ema(){
	var email=$('#remail').val();
	var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; 
	 b= reg.test(email);
	 if(b){
		 $('#tip').html('邮箱验证通过');
	 }else{
		 $('#tip').html('邮箱内容或格式有误');
	 }
}
function Istrue1(){
	return b;
}
function getJQ(id){
	if(id=="reusername"){
		datau=$('#reusername').val();
		dataType="username";
	}
	if(datau.length<=0){
		 $('#tip').html('内容不能为空');
	}else if(datau.length<=8){
		 $('#tip').html('用户名至少为9为');
	}else{
	$.get("check",{dataType:dataType,datau:datau},function(data,textStaus){
		if(data=='0'){
			b=false;
			$('#tip').html('用户名已存在');
		}else if(data=='1'){
			b=true;
			$('#tip').html('用户名可以使用');
		}
		});
	}
}
 function reg(){
	 $.post("check",{username:$('#reusername').val(),password:$('#repassword').val(),email:$('#remail').val(),adress:$('#readdress').val()},function(data,textStaus){
		 if(data>0){
				location.href="index.jsp";
			}else{
				$.alertWindow("注册失败！请联系管理员！");
			}
		 
	 });
	 
	 
 }
 
 


 
</script>
<script type="text/javascript">

function addcart(to,p){
var	k=${l.id}+"";
	if(k==null||k==''){
		$.alertWindow("请先登录！");
		location.href="index.jsp";
	}else{
		doPost(to,p);
	}
}
function doPost(to,p){
	
	 var myForm = document.createElement("form");     
   myForm.method = "post";  
   myForm.action = to;
   
	for(var i in p){
		var myInput=document.createElement("input");
		myInput.setAttribute("name",i);
		myInput.setAttribute("value", p[i]);
		myForm.appendChild(myInput);
	}
	document.body.appendChild(myForm);
	myForm.submit();
	document.body.removeChild(myForm); 
}


</script>
<c:choose>
<c:when test="${tip eq '加入成功'}">
<script>
$.alertWindow("加入成功");
</script>
</c:when>
<%-- <c:otherwise>
<script>
$.alertWindow("请先登录！");
location.href="index.jsp";
</script>
</c:otherwise> --%>
</c:choose>
   </body>
</html>


