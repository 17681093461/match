<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>



<!DOCTYPE html>
<html lang="en">
<head>
<title>Cart</title>
<meta charset="utf-8" />

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<c:set var="l" value="${sessionScope.user}"></c:set>


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
<link rel="stylesheet"
	href="/static/assets/css/woocommerce/woocommerce-smallscreen.css" />
<link rel="stylesheet" href="/static/assets/css/yith-woocommerce-wishlist/style.css" />

<link rel="stylesheet" href="/static/assets/css/a.css" />
<link rel="stylesheet" href="/static/assets/css/custom.css" />
<link rel="stylesheet" href="/static/assets/css/app-orange.css" id="theme_color" />
<link rel="stylesheet" href="" id="rtl" />
<link rel="stylesheet" href="/static/assets/css/app-responsive.css" />

<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	/* $(document).on("click",".minus",function(){
	var tr =$(this).parent().find("span").text();
		alert(tr);

	
	
	alert(td.size());
	}); */


	
	$(
			function() {
				var total1=0;
				var price;
				tr();
				lis();
				function lis(){
					var smalltotal=0;
					var smalltotal1=0;
					var l=$("#li1 li").length;
					$("#li3 #num").text(l);
					$(".cart-contents:eq(1)").text(l);
					var cou=0;
					for(var i=0;i<l;i++){
						var c=$("#li1 .product-price span span span+span:eq("+i+")").text();
						var c1=$("#li2 .product-price span span span+span:eq("+i+")").text();
						var cou=$("#li1 .qty span:eq("+i+")").text();
						var cou1=$("#li1 .qty span:eq("+i+")").text();
						var t=parseInt(c,0);
						var t1=parseInt(c1,0);
						
						var j=0;
						var j1=0;
						j=t*cou;
						j1=t1*cou1;
						smalltotal+=j;
						smalltotal1+=j1;
						$("#li1 .cart-checkout span+span span span span+span").text(smalltotal);
						$("#li2 .cart-checkout span+span span span span+span").text(smalltotal1);
						
					}
					
				}
				
				
				function tr(){ 
					
					var rs=$(".woocommerce .body tr").length;
					for(var i=0;i<rs-1;i++){
						var pr= $(".woocommerce .body tr:eq("+i+") td:eq(5) span span+span").text();
						var t=parseFloat(pr);
						total1+=t;
						
 				}
					$('.cart-subtotal span span+span').text(parseFloat(total1));
					$('.order-total span span+span').text(parseFloat(total1));
				}
				$(document).on(
						"click",
						".minus",
						function() {
							
							var row = $(this).parent().parent().parent()
									.index() + 1; // 行位置
							var col = $(this).parent().parent().index() + 1;
							var counter = $("#count").val();
							var pstr = $("tr:eq(" + row + ") > td:eq("
									+ (col -= 2) + ") span span+span");//单价
							var tstr = $("tr:eq(" + row + ") > td:eq("
											+ (col + 2) + ") span span+span");
							 price = pstr.text();
							var	 total = tstr.text();
							if(counter<1||total==0){
								$("tr:eq(" + row + ")").css("display","none");
							}else{
								total -= price;
								total1-=price;
								$('.cart-subtotal span span+span').text(parseFloat(total1));
								$('.order-total span span+span').text(parseFloat(total1));
								tstr.text(total);
							}
						});//减
				$(document).on(
						"click",
						".plus",
						function() {

							var row = $(this).parent().parent().parent()
									.index() + 1; // 行位置
							var col = $(this).parent().parent().index() + 1;

							var pstr = $("tr:eq(" + row + ") > td:eq("
									+ (col -= 2) + ") span span+span");//单价
							var price = pstr.text();
							var counter = $("#count").val();
						
							var tstr = $("tr:eq(" + row + ") > td:eq("
									+ (col + 2) + ") span span+span");
							var	total = +(tstr.text());
								total1+=parseFloat(price);
							total += +(price);
							$('.cart-subtotal span span+span').text(parseFloat(total1));
							$('.order-total span span+span').text(parseFloat(total1));
							tstr.text(total);
							
						});//加
			})

	/*  var total;
	function j(e){
		
	
	  $(document).on("click","#minus",function(){
	 		
		  alert("1234567");
	 		 var price=parseInt($("#price").text(),0);
	 		
	 		 var total=parseInt($("#total").text(),0);
	 		 var count=parseInt($("#count").val(),0);
	 		 total=total-price*count;
	 		 count--;
	 		 $('#total').html(total+"");
	 		
	 		 
	 	/* 	$('#total').val( $('#total').val()-$('#price').val()*1); */
	/* 	 	 });
		 	
		}
	 */
</script>

</head>

<body class="page woocommerce-cart woocommerce-page">


	<div class="body-wrapper theme-clearfix">
		<header id="header" class="header header-style1">
			<div class="header-top clearfix">
				<div class="container">
					<div class="rows">
						<!-- SIDEBAR TOP MENU -->
						<div class="pull-left top1">

							<c:if test="${!empty l}">
						<c:set var="per" value="${sessionScope.person}"></c:set>
								<c:set var="len">${l.username.length()}</c:set>
								<a class="dd" href=""> <c:out value="${l.getUsername()}"></c:out></a>
								<a class="dd" style="left:${len}px;font-size:12px;"
									href="http://127.0.0.1:8888/Connjsp1/rem">&nbsp;&nbsp;&nbsp;注销</a>
							</c:if>
							<div class="widget text-3 widget_text pull-left">
								<div class="widget-inner">
									<div class="textwidget"></div>
								</div>
							</div>

							
						</div>

						<div class="wrap-myacc pull-right">
							<div class="sidebar-account pull-left">
								<div class="account-title">My account</div>

								<div id="my-account" class="my-account">
									<div
										class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
										<div class="widget-inner">
											<ul id="menu-my-account" class="menu">
												<li class="menu-my-account"><a class="item-link"
													href="my_account.jsp"> <span class="menu-title">My
															Account</span>
												</a></li>

												<li class="menu-cart"><a class="item-link"
													href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})"> <span class="menu-title">Cart</span>
												</a></li>

												<li class="menu-checkout"><a class="item-link"
													href="checkout.jsp"> <span class="menu-title">Checkout</span>
												</a></li>

												<li class="menu-wishlist"><a class="item-link" href="#">
														<span class="menu-title">Wishlist</span>
												</a></li>
											</ul>
										</div>
									</div>

									<div class="widget-2 widget-last widget sw_top-4 sw_top">
										<div class="widget-inner">

											<div class="top-login">
												<c:if test="${empty l}">
													<div class="div-logined">
														<ul>
															<li><a href="javascript:void(0);"
																data-toggle="modal" data-target="#login_form"> <span>Login</span>
															</a> <span class="wg">Welcome Guest</span></li>
														</ul>
													</div>
												</c:if>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="pull-left top2">
								<div
									class="widget-1 widget-first widget nav_menu-2 widget_nav_menu">
									<div class="widget-inner">
										<ul id="menu-checkout" class="menu">
											<li class="menu-checkout"><a class="item-link"
												href="checkout.jsp"> <span class="menu-title">Checkout</span>
											</a></li>
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
							<a href="index.jsp"> <img src="../static/assets/images/icons/logo-orange.png"
								alt="Shoopy">
							</a>
						</div>

						<div class="mid-header pull-right">
							<div class="widget-1 widget-first widget sw_top-2 sw_top">
								<div class="widget-inner">
									<div class="top-form top-search">
										<div class="topsearch-entry">
											<form method="get" action="">
												<div>
													<input type="text" value="" name="s"
														placeholder="Enter your keyword...">
													<div class="cat-wrapper">
														<label class="label-search"> <select
															name="search_category" class="s1_option">
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

													<button type="submit" title="Search"
														class="fa fa-search button-search-pro form-button"></button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<div class="widget sw_top-3 sw_top pull-left" id="li3">
								<div class="widget-inner">
									<div
										class="top-form top-form-minicart etrostore-minicart pull-right">
										<div class="top-minicart-icon pull-right">
											<i class="fa fa-shopping-cart"></i> <a class="cart-contents"
												href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})" title="View your shopping cart"> <span
												class="minicart-number" id="num">2</span>
											</a>
										</div>

										<div class="wrapp-minicart" id="li1">
											<div class="minicart-padding">
												<div class="number-item">
													There are <span>items</span> in your cart
												</div>

												<ul class="minicart-content">
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
																	<span class="price"> <span class="woocommerce-Price-amount amount"> <span class="woocommerce-Price-currencySymbol">￥</span><span><c:out value="${gl.price}"/></span>
																	</span>
																	</span>

																	<div class="qty">
																		<span class="qty-number"><c:out value="${gl.count}"/></span>
																	</div>
																</div>

																<div class="product-action clearfix">
																	<a href="#" class="btn-remove" title="Remove this item">
																		<span class="javascript:doPost('delet',{'id':'${gl.cid}','userid':'${l.id}'})"></span>
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
														<span class="label-price-total">Total</span> <span class="price-total-w"> <span class="price"> <span class="woocommerce-Price-amount amount"> <span class="woocommerce-Price-currencySymbol">￥</span> <span>0.00</span> </span>
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
										<li class="menu-wishlist"><a class="item-link" href="#">
												<span class="menu-title">Wishlist</span>
										</a></li>

										<li class="yith-woocompare-open menu-compare"><a
											class="item-link compare" href="#"> <span
												class="menu-title">Compare</span>
										</a></li>
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
										<button class="navbar-toggle" type="button"
											data-toggle="collapse" data-target="#ResMenuprimary_menu">
											<span class="sr-only">Categories</span> <span
												class="icon-bar"></span> <span class="icon-bar"></span> <span
												class="icon-bar"></span>
										</button>

										<div id="ResMenuprimary_menu"
											class="collapse menu-responsive-wrapper">
											<ul id="menu-primary-menu" class="etrostore_resmenu">
												<li><a href="index.jsp">Home</a></li>
												<li><a href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})">Cart</a></li>
												<li><a href="checkout.jsp">Checkout</a></li>
												<li><a href="my_account.jsp">My Account</a></li>
												<li><a href="shop.jsp">Shop</a></li>
												<li><a href="about_us.jsp">About Us</a></li>
												<li><a href="contact_us.jsp">Contact Us</a></li>
											</ul>
										</div>
									</div>

									<ul id="menu-primary-menu-1"
										class="nav nav-pills nav-mega etrostore-mega etrostore-menures">
										<li><a href="index.jsp">Home</a></li>
										<li><a href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})">Cart</a></li>
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

						<div
							class="top-form top-form-minicart etrostore-minicart pull-right">
							<div class="top-minicart-icon pull-right">
								<i class="fa fa-shopping-cart"></i> <a class="cart-contents"
									href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})" title="View your shopping cart"> </a>
							</div>

							<div class="wrapp-minicart" id="li2">
								<div class="minicart-padding">
									<div class="number-item">
										There are <span>items</span> in your cart
									</div>

									<ul class="minicart-content">
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
											<span class="label-price-total">Total</span> <span
												class="price-total-w"> <span class="price"> <span
													class="woocommerce-Price-amount amount"> <span
														class="woocommerce-Price-currencySymbol">￥</span><span></span>
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

						<div class="mid-header pull-right">
							<div class="widget sw_top">
								<span class="stick-sr"> <i class="fa fa-search"
									aria-hidden="true"></i>
								</span>

								<div class="top-form top-search">
									<div class="topsearch-entry">
										<form role="search" method="get"
											class="form-search searchform" action="">
											<label class="hide"></label> <input type="text" value=""
												name="s" class="search-query" placeholder="Keyword here..." />
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
					<h1>Cart</h1>
					<div class="bread">
						<div class="breadcrumbs theme-clearfix">
							<div class="container">
								<ul class="breadcrumb">
									<li><a href="#">Home</a> <span class="go-page"></span></li>

									<li class="active"><span>Cart</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div id="contents" role="main"
					class="main-page col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="page type-page status-publish hentry">
						<div class="entry-content">
							<div class="entry-summary">
								<div class="woocommerce">
									<form action="" method="post">
										<table class="shop_table shop_table_responsive cart"
											cellspacing="0">
											<thead>
												<tr>
													<th class="product-remove">&nbsp;</th>
													<th class="product-thumbnail">&nbsp;</th>
													<th class="product-name">Product</th>
													<th class="product-price">Price</th>
													<th class="product-quantity">Quantity</th>
													<th class="product-subtotal">Total</th>
												</tr>
											</thead>

											<tbody class="body">
												<c:forEach var="clist" items="${sessionScope.cart}">
													<tr class="cart_item">
														<td class="product-remove"><a href="javascript:doPost('delet',{'id':'${clist.cid}','userid':'${clist.userid}'})" class="remove"
															title="Remove this item"><i class="fa fa-times"
																aria-hidden="true"></i></a></td>

														<td class="product-thumbnail"><a
															href="simple_product.jsp"> <img width="180"
																height="180" src=<c:out value="${clist.img}"></c:out>
																class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
																alt="" sizes="(max-width: 180px) 100vw, 180px">
														</a></td>

														<td class="product-name" data-title="Product">
														<span id="odid" hidden="hidden"><c:out
																	value="${per.id}"></c:out></span><span
															id="udid" hidden="hidden"><c:out
																	value="${l.id}"></c:out></span> <span hidden="hidden" id="gid"
															><c:out value="${clist.getGid()}"></c:out></span>
															<a href="simple_product.jsp"><c:out
																	value="${clist.getGname()}"></c:out></a></td>

														<td class="product-price" data-title="Price"><span
															class="woocommerce-Price-amount amount"><span
																class="woocommerce-Price-currencySymbol">￥</span><span
																id="price"><c:out value="${clist.getPrice()}"></span>
															</c:out></span></td>

														<td class="product-quantity">
															<div class="quantity buttons_added">
																<input type="button" value="-" class="minus"> <input
																	type="number" step="1" min="0" max="" name=""
																	value="${clist.getCount()}" title="Qty"
																	class="input-text qty text" disabled size="4" pattern="[0-9]*"
																	id="count"> <input type="button" value="+"
																	class="plus">
															</div>
														</td>

														<td class="product-subtotal" data-title="Total"><span
															class="woocommerce-Price-amount amount"><span
																class="woocommerce-Price-currencySymbol">￥</span><span
																id="total"><c:out value="${clist.getTotal()}"></c:out></span></span>
														</td>
													</tr>
												</c:forEach>
												<tr>
													<td colspan="6" class="actions">
														<div class="coupon">
															<label for="coupon_code">Coupon:</label> <input
																type="text" name="coupon_code" class="input-text"
																id="coupon_code" value="" placeholder="Coupon code">
															<input type="submit" class="button" name="apply_coupon"
																value="Apply Coupon">
														</div> <input type="submit" class="button" name="update_cart"
														value="Update Cart">
													</td>
												</tr>
											</tbody>
										</table>
									</form>

									<div class="cart-collaterals">
										<div class="products-wrapper">
											<div class="cart_totals ">
												<h2>Cart Totals</h2>

												<table cellspacing="0"
													class="shop_table shop_table_responsive">
													<tbody>
														<tr class="cart-subtotal">
															<th>Subtotal</th>
															<td data-title="Subtotal" id="t"><span
																class="woocommerce-Price-amount amount"><span
																	class="woocommerce-Price-currencySymbol">$</span><span>300</span></span>
															</td>
														</tr>
														<tr class="order-total">
															<th>Total</th>
															<td data-title="Total"><strong><span
																	class="woocommerce-Price-amount amount"><span
																		class="woocommerce-Price-currencySymbol">$</span><span>300.00</span></span></strong>
															</td>
														</tr>
													</tbody>
												</table>

												<div class="wc-proceed-to-checkout">
													<a  id="buy" href="javascript:cart()" 
														 class="checkout-button button alt wc-forward">Proceed
														to Checkout</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>

		<footer id="footer" class="footer default theme-clearfix">
			<!-- Content footer -->
			<div class="container">
				<div class="vc_row wpb_row vc_row-fluid">
					<div class="wpb_column vc_column_container vc_col-sm-12">
						<div class="vc_column-inner ">
							<div class="wpb_wrapper">
								<div id="sw_testimonial01"
									class="testimonial-slider client-wrapper-b carousel slide "
									data-interval="0">
									<div class="carousel-cl nav-custom">
										<a class="prev-test fa fa-angle-left" href="#sw_testimonial01"
											role="button" data-slide="prev"><span></span></a> <a
											class="next-test fa fa-angle-right" href="#sw_testimonial01"
											role="button" data-slide="next"><span></span></a>
									</div>

									<div class="carousel-inner">
										<div class="item active">
											<div class="item-inner">
												<div class="image-client pull-left">
													<a href="#" title=""> <img width="127" height="127"
														src="../static/assets/images/1903/tm3.jpg"
														class="attachment-thumbnail size-thumbnail wp-post-image"
														alt="" />
													</a>
												</div>

												<div class="client-say-info">
													<div class="client-comment">In auctor ex id urna
														faucibus porttitor. Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.�</div>

													<div class="name-client">
														<h2>
															<a href="#" title="">Jerry</a>
														</h2>
														<p>Web Developer</p>
													</div>
												</div>
											</div>

											<div class="item-inner">
												<div class="image-client pull-left">
													<a href="#" title=""> <img width="127" height="127"
														src="../static/assets/images/1903/tm1.png"
														class="attachment-thumbnail size-thumbnail wp-post-image"
														alt="" />
													</a>
												</div>

												<div class="client-say-info">
													<div class="client-comment">In auctor ex id urna
														faucibus porttitor. Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.�</div>

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
													<a href="#" title=""> <img width="127" height="127"
														src="../static/assets/images/1903/tm2.png"
														class="attachment-thumbnail size-thumbnail wp-post-image"
														alt="" />
													</a>
												</div>

												<div class="client-say-info">
													<div class="client-comment">In auctor ex id urna
														faucibus porttitor. Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.�</div>

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
													<a href="#" title=""> <img width="127" height="127"
														src="../static/assets/images/1903/tm3.jpg"
														class="attachment-thumbnail size-thumbnail wp-post-image"
														alt="" />
													</a>
												</div>

												<div class="client-say-info">
													<div class="client-comment">In auctor ex id urna
														faucibus porttitor. Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.�</div>

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

				<div data-vc-full-width="true" data-vc-full-width-init="false"
					data-vc-stretch-content="true"
					class="vc_row wpb_row vc_row-fluid footer-style1 vc_row-no-padding">
					<div
						class="container float wpb_column vc_column_container vc_col-sm-12">
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

															<form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-275"
																method="post" data-id="275" data-name="">
																<div class="mc4wp-form-fields">
																	<div class="newsletter-content">
																		<input type="email" class="newsletter-email"
																			name="EMAIL" placeholder="Your email" required="" />
																		<input class="newsletter-submit" type="submit"
																			value="Subscribe" />
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
																<li><a href="#"> <i class="fa fa-facebook"></i>
																</a></li>

																<li><a href="#"> <i class="fa fa-twitter"></i>
																</a></li>

																<li><a href="#"> <i class="fa fa-google-plus"></i>
																</a></li>

																<li><a href="#"> <i class="fa fa-linkedin"></i>
																</a></li>

																<li><a href="#"> <i class="fa fa-pinterest-p"></i>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="vc_row wpb_row vc_inner vc_row-fluid footer-bottom">
									<div
										class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-4 vc_col-md-4 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_text_column wpb_content_element ">
													<div class="wpb_wrapper">
														<div class="ya-logo">
															<a href="#"> <img src="../static/assets/images/icons/logo-footer.png"
																alt="logo" />
															</a>
														</div>
													</div>
												</div>

												<div class="wpb_raw_code wpb_content_element wpb_raw_html">
													<div class="wpb_wrapper">
														<div class="infomation">
															<p>Lorem Ipsum is simply dummy text of the printing
																and typesetting industry. Lorem Ipsum is simply dummy
																text of the printing and typesetting industry.</p>

															<div class="info-support">
																<ul>
																	<li>No 1123, Marmora Road, Glasgow, D04 89GR.</li>
																	<li>(801) 2345 - 6788 / (801) 2345 - 6789</li>
																	<li><a href="mailto:contact@etrostore.com">support@etrostore.com</a></li>
																</ul>
															</div>

															<div class="store">
																<a href="#"> <img src="../static/assets/images/1903/app-store.png"
																	alt="store" title="store" />
																</a> <a href="#"> <img
																	src="../static/assets/images/1903/google-store.png" alt="store"
																	title="store" />
																</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div
										class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-2 vc_col-md-2 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="vc_wp_custommenu wpb_content_element">
													<div class="widget widget_nav_menu">
														<h2 class="widgettitle">Support</h2>

														<ul id="menu-support" class="menu">
															<li class="menu-product-support"><a
																class="item-link" href="#"> <span class="menu-title">Product
																		Support</span>
															</a></li>

															<li class="menu-pc-setup-support-services"><a
																class="item-link" href="#"> <span class="menu-title">PC
																		Setup & Support Services</span>
															</a></li>

															<li class="menu-extended-service-plans"><a
																class="item-link" href="#"> <span class="menu-title">Extended
																		Service Plans</span>
															</a></li>

															<li class="menu-community"><a class="item-link"
																href="#"> <span class="menu-title">Community</span>
															</a></li>

															<li class="menu-product-manuals"><a
																class="item-link" href="#"> <span class="menu-title">Product
																		Manuals</span>
															</a></li>

															<li class="menu-product-registration"><a
																class="item-link" href="#"> <span class="menu-title">Product
																		Registration</span>
															</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div
										class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-2 vc_col-md-2 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="vc_wp_custommenu wpb_content_element">
													<div class="widget widget_nav_menu">
														<h2 class="widgettitle">Your Links</h2>

														<ul id="menu-your-links" class="menu">
															<li class="menu-my-account"><a class="item-link"
																href="my_account.jsp"> <span class="menu-title">My
																		Account</span>
															</a></li>

															<li class="menu-order-tracking"><a class="item-link"
																href="#"> <span class="menu-title">Order
																		Tracking</span>
															</a></li>

															<li class="menu-watch-list"><a class="item-link"
																href="#"> <span class="menu-title">Watch List</span>
															</a></li>

															<li class="menu-customer-service"><a
																class="item-link" href="#"> <span class="menu-title">Customer
																		Service</span>
															</a></li>

															<li class="menu-returns-exchanges"><a
																class="item-link" href="#"> <span class="menu-title">Returns
																		/ Exchanges</span>
															</a></li>

															<li class="menu-faqs"><a class="item-link" href="#">
																	<span class="menu-title">FAQs</span>
															</a></li>

															<li class="menu-financing"><a class="item-link"
																href="#"> <span class="menu-title">Financing</span>
															</a></li>

															<li class="menu-card"><a class="item-link" href="#">
																	<span class="menu-title">Card</span>
															</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div
										class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-4 vc_col-md-4 vc_col-xs-12">
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
											<li class="menu-about-us"><a class="item-link"
												href="about_us.jsp"> <span class="menu-title">About
														Us</span>
											</a></li>

											<li class="menu-customer-service"><a class="item-link"
												href="#"> <span class="menu-title">Customer
														Service</span>
											</a></li>

											<li class="menu-privacy-policy"><a class="item-link"
												href="#"> <span class="menu-title">Privacy Policy</span>
											</a></li>

											<li class="menu-site-map"><a class="item-link" href="#">
													<span class="menu-title">Site Map</span>
											</a></li>

											<li class="menu-orders-and-returns"><a class="item-link"
												href="#"> <span class="menu-title">Orders and
														Returns</span>
											</a></li>

											<li class="menu-contact-us"><a class="item-link"
												href="contact_us.jsp"> <span class="menu-title">Contact
														Us</span>
											</a></li>
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
						<p>
							Copyright &copy; 2017.Company name All rights reserved.<a
								target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
						</p>
					</div>

					<div class="sidebar-copyright pull-right">
						<div class="widget-1 widget-first widget text-4 widget_text">
							<div class="widget-inner">
								<div class="textwidget">
									<div class="payment">
										<a href="#"> <img src="../static/assets/images/1903/paypal.png"
											alt="payment" title="payment" />
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
	<div class="modal fade" id="search_form" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog block-popup-search-form">
			<form role="search" method="get" class="form-search searchform"
				action="">
				<input type="text" value="" name="s" class="search-query"
					placeholder="Enter your keyword..." />

				<button type="submit"
					class="fa fa-search button-search-pro form-button"></button>

				<a href="javascript:void(0)" title="Close"
					class="close close-search" data-dismiss="modal">X</a>
			</form>
		</div>
	</div>

	<div class="modal fade" id="login_form" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog block-popup-login">
			<a href="javascript:void(0)" title="Close" class="close close-login"
				data-dismiss="modal">Close</a>

			<div class="tt_popup_login">
				<strong>Sign in Or Register</strong>
			</div>

			<form action="login" method="post" class="login">
				<div class="block-content">
					<div class="col-reg registered-account">
						<div class="email-input">
							<input type="text" class="form-control input-text username"
								name="username" id="username" placeholder="Username" />
						</div>

						<div class="pass-input">
							<input class="form-control input-text password" type="password"
								placeholder="Password" name="password" id="password" />
						</div>

						<div class="ft-link-p">
							<a href="#" title="Forgot your password">Forgot your
								password?</a>
						</div>

						<div class="actions">
							<div class="submit-login">
								<input type="submit" class="button btn-submit-login"
									name="login" value="Login" />
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

						<a href="" data-toggle="modal" data-target="#register_form"
							title="Register" class="btn-reg-popup">Create an account</a>
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
				data-dismiss="modal">Close</a>

			<div class="tt_popup_login">
				<strong>Sign in Or Register</strong>
			</div>

			<form action="check" method="post" onsubmit="return Istrue1()"
				class="register">
				<div class="block-content">
					<div style="border-right:0px; min-height:200px;"
						class="col-reg registered-account">
						<span id="hei"></span>
						<div class="email-input">
							<input type="text" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" class="form-control input-text username"
								name="reusername" id="reusername" placeholder="Username"
								onblur="getJQ('reusername')" />
						</div>
						<div class="pass-input">
							<input class="form-control input-text password" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" type="password"
								placeholder="Password" name="repassword" onblur="pwdlen()"
								id="repassword" />
						</div>
						<div class="pass-input">
							<input class="form-control input-text password" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" type="password"
								placeholder="again Password" onblur="pwdCh()" name="repassword1"
								id="repassword1" />
						</div>
						<div style="width:100px;height:40px;color:red;" id="tip"></div>
						<div class="actions">
							<div class="submit-login">
								<input type="submit" id="re" class="button btn-submit-login"
									name="register" value="register" />
							</div>
						</div>
					</div>

					<div class="col-reg login-customer">
						<div class="pass-input">
							<div class="pas-c"></div>
							<input class="form-control input-text password" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" type="text"
								placeholder="XXX@XXX.COM" onblur="ema()" name="email"
								id="remail" />
						</div>
						<div class="pass-input ">
							<div class="pas-d"></div>
							<input class="form-control input-text password" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" type="text"
								placeholder="address" name="address" id="readress" />
						</div>
						<div class="">
							<div class="pas-e"></div>
							<input style="margin:4px 55px 11px;" class="radio1" type="radio"
								name="sex" id="radio" value="1" checked="checked" /><span
								id="title">Boy</span> <input class="radio1" type="radio"
								name="sex" id="radio" value="0" /><span id="title1">Girl</span>
						</div>

					</div>
				</div>
			</form>
			<div class="clear"></div>
		</div>
	</div>
	<a id="etrostore-totop" href="#"></a>

	<div id="subscribe_popup" class="subscribe-popup"
		style="background: url(../static/assets/images/icons/bg_newsletter.jpg)">
		<div class="subscribe-popup-container">
			<h2>Join our newsletter</h2>
			<div class="description">Subscribe now to get 40% of on any
				product!</div>
			<div class="subscribe-form">
				<form id="mc4wp-form-2" class="mc4wp-form mc4wp-form-275"
					method="post" data-id="275" data-name="">
					<div class="mc4wp-form-fields">
						<div class="newsletter-content">
							<input type="email" class="newsletter-email" name="EMAIL"
								placeholder="Your email" required="" /> <input
								class="newsletter-submit" type="submit" value="Subscribe" />
						</div>
					</div>
					<div class="mc4wp-response"></div>
				</form>
			</div>

			<div class="subscribe-checkbox">
				<label for="popup_check"> <input id="popup_check"
					name="popup_check" type="checkbox" /> <span>Don't show this
						popup again!</span>
				</label>
			</div>

			<div class="subscribe-social">
				<div class="subscribe-social-inner">
					<a href="#" class="social-fb"> <span class="fa fa-facebook"></span>
					</a> <a href="#" class="social-tw"> <span class="fa fa-twitter"></span>
					</a> <a href="#" class="social-gplus"> <span
						class="fa fa-google-plus"></span>
					</a> <a href="#" class="social-pin"> <span class="fa fa-instagram"></span>
					</a> <a href="#" class="social-linkedin"> <span
						class="fa fa-pinterest-p"></span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery/js.cookie.min.js"></script>

	<!-- OPEN LIBS JS -->
	<script type="text/javascript"
		src="js/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/slick-1.6.0/slick.min.js"></script>

	<script type="text/javascript"
		src="js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
	<script type="text/javascript" src="js/sw_core/isotope.js"></script>
	<script type="text/javascript" src="js/sw_core/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="js/sw_woocommerce/category-ajax.js"></script>
	<script type="text/javascript"
		src="js/sw_woocommerce/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="js/wc-quantity-increment.min.js"></script>
	<script type="text/javascript" src="js/woocommerce/cart.min.js"></script>
	<script type="text/javascript"
		src="js/js_composer/js_composer_front.min.js"></script>

	<script type="text/javascript" src="js/plugins.js"></script>
	<script type="text/javascript" src="js/megamenu.min.js"></script>
	<script type="text/javascript" src="js/main.min.js"></script>
	<script src="js/saveTip.js" type="text/javascript"></script>
	<script type="text/javascript">
		var sticky_navigation_offset_top = $("#header .header-bottom").offset().top;
		var sticky_navigation = function() {
			var scroll_top = $(window).scrollTop();
			if (scroll_top > sticky_navigation_offset_top) {
				$("#header .header-bottom").addClass("sticky-menu");
				$("#header .header-bottom").css({
					"top" : 0,
					"left" : 0,
					"right" : 0
				});
			} else {
				$("#header .header-bottom").removeClass("sticky-menu");
			}
		};
		sticky_navigation();
		$(window).scroll(function() {
			sticky_navigation();
		});

		$(document).ready(function() {
			$(".show-dropdown").each(function() {
				$(this).on("click", function() {
					$(this).toggleClass("show");
					var $element = $(this).parent().find("> ul");
					$element.toggle(300);
				});
			});
		});
	</script>

	<!--[if gte IE 9]><!-->
	<script type="text/javascript">
		var request, b = document.body, c = 'className', cs = 'customize-support', rcs = new RegExp(
				'(^|\\s+)(no-)?' + cs + '(\\s+|$)');
		request = true;

		b[c] = b[c].replace(rcs, ' ');
		// The customizer requires postMessage and CORS (if the site is cross domain)
		b[c] += (window.postMessage && request ? ' ' : ' no-') + cs;
	</script>
	<!--<![endif]-->
	<script type="text/javascript">
		var id;
		var datau;
		var dataType;
		var b = false;
	
		function pwdlen() {
			var p = $('#repassword').val();
			if (p.length <= 8 || p == '') {
				$('#tip').html('密码长度至少9位');

				b = false;
			} else {
				$('#tip').html('密码长度至少9位 已满足！');
				b = true;
			}
		}

		function pwdCh() {
			var l = $('#repassword').val();
			var l1 = $('#repassword1').val();
			if (l != l1 || (l == '' || l1 == '')) {
				$('#tip').html('密码不一致');
				b = false;
			} else {
				$('#tip').html('密码验证通过');
				b = true;
			}
		}
		function ema() {
			var email = $('#remail').val();
			var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
			b = reg.test(email);
			if (b) {
				$('#tip').html('邮箱验证通过');
			} else {
				$('#tip').html('邮箱内容或格式有误');
			}
		}
		function Istrue1() {
			return b;
		}
		function getJQ(id) {
			if (id == "reusername") {
				datau = $('#reusername').val();
				dataType = "username";
			}
			if (datau.length <= 0) {
				$('#tip').html('内容不能为空');
			} else if (datau.length <= 8) {
				$('#tip').html('用户名至少为9为');
			} else {
				$.get("check", {
					dataType : dataType,
					datau : datau
				}, function(data, textStaus) {
					if (data == '0') {
						b = false;
						$('#tip').html('用户名已存在');
					} else if (data == '1') {
						b = true;
						$('#tip').html('用户名可以使用');
					}
				});
			}
		}
		function reg() {
			$.post("check", {
				username : $('#reusername').val(),
				password : $('#repassword').val(),
				email : $('#remail').val(),
				adress : $('#readdress').val()
			}, function(data, textStaus) {
				if (data > 0) {
					location.href = "index.jsp";
				} else {
					alert("注册失败！请联系管理员！");
				}

			});

		}
	</script>
<script  type="text/javascript">

function doPost(to,p){
	var myForm =document.createElement('form');
	myForm.method="post";
	myForm.action=to;
	for(var i in p){
		var myInput=document.createElement('input');
		myInput.setAttribute("name", i);
		myInput.setAttribute("value", p[i]);                                           
		myForm.appendChild(myInput);
	}
	if(to=='cartEach'){
		document.body.appendChild(myForm);
		myForm.submit();
	document.body.replaceChild(myform);
	}else{
		var b=ist();
		if(b){
		document.body.appendChild(myForm);
			myForm.submit();
		document.body.replaceChild(myform);
		}else{
			
		}
	}
	
}
function ist(){
	if(window.confirm("是否要删除？")){
		return true;
	}else{
		return false;
	}
}

</script>
<script type="text/javascript">

function cart(){
	var data=new Array();
	if($(".body tr").length<=1){
		 $.alertWindow("请先选购商品！");
		
	}else{
		
var length=$(".body tr").length;
	for(var i=0;i<length-1;i++){
		data[i]={'name':$(".body tr:eq("+i+") td:eq(2) a:eq(0)").text(),'price':$(".body tr:eq("+i+") td:eq(3) span span+span").text(),
			count:$(".body tr:eq("+i+") td:eq(4) div input:eq(1)").val(),total:$(".body tr:eq("+i+") td:eq(5) span  span+span").text(),
			userid:$(".body tr:eq("+i+") td:eq(2) span:eq(1)").text(),
			gid:$(".body tr:eq("+i+") td:eq(2) span:eq(2)").text(),bigtotal:$(".order-total span span +span").text()
		}
	}
	$.post('cover',{cart:JSON.stringify(data)},function(){
		location.href="checkout.jsp";
	});
}
}
</script>
<c:if test="${empty l}">
	<script>
	
	$.alertWindow("请先登录");
	location.href="index.jsp";
	</script>
	 
</c:if>

</body>
</html>


