<%@ page language="java" import="com.oaec.entry.User,java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>	
	<title>Checkout</title>
	<meta charset="utf-8" />
	
<!-- 	<meta http-equiv="refresh"
		content="5;url=" />  -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- GOOGLE WEB FONTS -->
	<link rel="stylesheet" href="/static/assets/css/font-awesome.min.css">
	
	<!-- BOOTSTRAP 3.3.7 CSS -->
	<link rel="stylesheet" href="/static/assets/css/bootstrap.min.css" />
	 <c:set var="l" value="${sessionScope.user}"></c:set>
	<c:if test="${empty l}">
		<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
	
	<script>
		
			$.alertWindow("请先登录");
		
	</script>
	<meta http-equiv="refresh"
		content="0.01;url=http://127.0.0.1:8888/Connjsp1/index.jsp" />
</c:if>
	<!-- SLICK v1.6.0 CSS -->
	<link rel="stylesheet" href="/static/assets/css/slick-1.6.0/slick.css" />

	<link rel="stylesheet" href="/static/assets/css/select2/select2.css">
	
	<link rel="stylesheet" href="/static/assets/css/jquery.fancybox.css" />
	<link rel="stylesheet" href="/static/assets/css/yith-woocommerce-compare/colorbox.css" />
	<link rel="stylesheet" href="/static/assets/css/owl-carousel/owl.carousel.min.css" />
	<link rel="stylesheet" href="/static/assets/css/owl-carousel/owl.theme.default.min.css" />
	<link rel="stylesheet" href="/static/assets/css/js_composer/js_composer.min.css" />
	<link rel="stylesheet" href="/static/assets/css/woocommerce/woocommerce.css" />
<link rel="stylesheet" href="/static/assets/css/a.css"/>
	<link rel="stylesheet" href="/static/assets/css/woocommerce/woocommerce-layout.css" />
	<link rel="stylesheet" href="/static/assets/css/woocommerce/woocommerce-smallscreen.css" />
	<link rel="stylesheet" href="/static/assets/css/yith-woocommerce-wishlist/style.css" />
	
	
	<link rel="stylesheet" href="/static/assets/css/custom.css" />
	<link rel="stylesheet" href="/static/assets/css/app-orange.css" id="theme_color" />
	<link rel="stylesheet" href="" id="rtl" />
	<link rel="stylesheet" href="/static/assets/css/app-responsive.css" />
	<style>
	#dingwei{
    width: 40px;
    height: 40px;
    position: relative;
    display: block;
    left: 522px;
    top: -39px;
    background:url("img/dingwei.png") center/cover;
}
	</style>
		<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
<script>
$(function(){
	var trlen=$("#body tr").length;
	var subt=$(".cart-subtotal span span+span").text();
    var tot=$(".order-total span span+span").text();
    var total=0;
   

   for(var i=0;i<trlen;i++){
	 var t=$("#body tr:eq("+i+") td:eq(1) span+span").text();
	 var tl=parseFloat(t);
	 total+=tl;
   }
   	$(" #items").val(trlen);
 	$(" #zong").val(total);
	 $(".cart-subtotal span span+span").text(total);
	 $(".order-total span span+span").text(total);
})


</script>
<Script>
function reurl(){

url = location.href; //把当前页面的地址赋给变量 url

var times = url.split("?"); //分切变量 url 分隔符号为 "?"

if(times[1] != 1){ //如果?后的值不等于1表示没有刷新

url += "?1"; //把变量 url 的值加入 ?1

self.location.replace(url); //刷新页面

}
}

onload=reurl;

</script> 

<script>

$(function(){
	select();
	function select(){
		/* $("#billing_country").removeAttr("selected");根据值去除选中状态 */  

		
	 $("#billing_country option[value='"+$("#coun").val()+"']").attr("selected","selected");/* 根据值让option选中 */
		
	}	
});

	


</script>
</head>

<body class="page woocommerce-checkout woocommerce-page">

     
 <c:set var="cart" value="${sessionScope.cart}"></c:set>
 <c:set var="a" value="${sessionScope.address}"></c:set>
 <c:set var="per" value="${sessionScope.address}"></c:set>
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
													<a class="item-link" href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})">
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
							
							<div class="widget sw_top-3 sw_top pull-left" id="li3">
								<div class="widget-inner">
									<div class="top-form top-form-minicart etrostore-minicart pull-right">
										<div class="top-minicart-icon pull-right">
											<i class="fa fa-shopping-cart"></i>
											<a class="cart-contents" href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})" title="View your shopping cart">
												<span class="minicart-number" id="num">2</span>
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
																	<span class="woocommerce-Price-currencySymbol">$</span> <span></span>
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
												<li><a href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})">Cart</a></li>
												<li><a href="checkout.jsp">Checkout</a></li>
												<li><a href="my_account.jsp">My Account</a></li>
												<li><a href="shop.jsp">Shop</a></li>
												<li><a href="about_us.jsp">About Us</a></li>
												<li><a href="contact_us.jsp">Contact Us</a></li>
											</ul>
										</div>
									</div>
									
									<ul id="menu-primary-menu-1" class="nav nav-pills nav-mega etrostore-mega etrostore-menures">
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
				  
						<div class="top-form top-form-minicart etrostore-minicart pull-right">
							<div class="top-minicart-icon pull-right">
								<i class="fa fa-shopping-cart"></i>
								<a class="cart-contents" href="javascript:doPost('cartEach',{'name':'${l.getUsername()}','userid':'${l.id}'})" title="View your shopping cart">
									<span class="minicart-number" id="num">2</span>
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
														<span class="woocommerce-Price-currencySymbol"></span><span></span>
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
					<h1>Checkout</h1>
					<div class="bread">
						<div class="breadcrumbs theme-clearfix">
							<div class="container">
								<ul class="breadcrumb">
									<li>
										<a href="index.jsp">Home</a>
										<span class="go-page"></span>
									</li>
									
									<li class="active">
										<span style="color:#ffaa00;">Checkout</span>
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
					<div class="page type-page status-publish hentry">
						<div class="entry-content">
							<div class="woocommerce">
							<c:if test="${empty l}">
								<div class="woocommerce-info">
									Returning customer? 
									<a href="#" class="showlogin">Click here to login</a>
								</div>
								</c:if>
								<form action="login" method="post" class="login" style="display:none;">
									<p>If you have shopped with us before, please enter your details in the boxes below. If you are a new customer, please proceed to the Billing & Shipping section.</p>
									
									<p class="form-row form-row-first">
										<label for="username">
											Username or email 
											<span class="required">*</span>
										</label>
										
										<input type="text" class="input-text" name="username" id="username" />
									</p>
									
									<p class="form-row form-row-last">
										<label for="password">
											Password <span class="required">*</span>
										</label>
										
										<input class="input-text" type="password" name="password" id="password" />
									</p>
									
									<div class="clear"></div>
									
									<p class="form-row">
										<input type="submit" class="button" name="login" value="Login" />
										
										<label for="rememberme" class="inline">
											<input name="rememberme" type="checkbox" id="rememberme" value="forever" /> 
											Remember me
										</label>
									</p>
									
									<p class="lost_password">
										<a href="#">Lost your password?</a>
									</p>
									
									<div class="clear"></div>
								</form>
								
								<div class="woocommerce-info">Have a coupon? <a href="#" class="showcoupon">Click here to enter your code</a></div>
								<form class="checkout_coupon" method="post" style="display:none">
									<p class="form-row form-row-first">
										<input type="text" name="coupon_code" class="input-text" placeholder="Coupon code" id="coupon_code" value="" />
									</p>
									
									<p class="form-row form-row-last">
										<input type="submit" class="button" name="apply_coupon" value="Apply Coupon" />
									</p>
									
									<div class="clear"></div>
								</form>
								<c:out value="${requestScope.tips}"/>
								<c:if test="${requestScope.tips eq '下单成功' }">
								<span>下单成功</span>
								</c:if>
								
								<form name="checkout" action="downr" method="post" id="forn" onsubmit="return true1()" class="checkout woocommerce-checkout"  >
									<div class="col2-set" id="customer_details">
										<div class="col-1">
											<div class="woocommerce-billing-fields">
												<h3>Billing Details</h3>
											
												<p class="form-row form-row-first validate-required" id="billing_first_name_field">
													<label for="billing_first_name" class="">
														AllName 
														<abbr class="required" title="required">*</abbr>
													</label>													
													<input type="text" class="input-text " name="billing_first_name" id="billing_first_name" placeholder="" autocomplete="given-name" value="123" />
												</p>
											
												<div class="clear"></div>
							  
												<p class="form-row form-row-wide" id="billing_company_field">
													<label for="billing_company" class="">Company Name</label>
													<input type="text" class="input-text " name="billing_company" id="billing_company" placeholder="" autocomplete="organization" value="${per.company}" />
												</p>
												
												<p class="form-row form-row-first validate-required validate-email" id="billing_email_field">
													<label for="billing_email" class="">
														Email Address 
														<abbr class="required" title="required">*</abbr>
													</label>
													<input type="email" class="input-text " name="billing_email" id="billing_email" placeholder="" autocomplete="email" value="${l.email}" />
												</p>
												
												<p class="form-row form-row-last validate-required validate-phone" id="billing_phone_field">
													<label for="billing_phone" class="">
														Phone 
														<abbr class="required" title="required">*</abbr>
													</label>
													<input type="tel" class="input-text " name="billing_phone" id="billing_phone" placeholder="" autocomplete="tel" value="${per.phone}" />
												</p>
												
												<div class="clear"></div>
												
												<p class="form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated" id="billing_country_field">
													<label for="billing_country" class="">
														Country 
														<abbr class="required" title="required">*</abbr>
													</label>
													<input type="text" name="userid" id="userid1"  value="${l.id}"style="display:none;"/>
													<input type="text" value="${per.country}" style="display:none;" id="coun"/>
													<select name="billing_country" id="billing_country" autocomplete="country" class="country_to_state country_select " tabindex="-1" title="Country *">
														<option value="">Select a country�</option>
														<option value="AX">�land Islands</option>
														<option value="AF">Afghanistan</option>
														<option value="AL">Albania</option>
														<option value="DZ">Algeria</option>
														<option value="AS">American Samoa</option>
														<option value="AD">Andorra</option>
														<option value="AO">Angola</option>
														<option value="AI">Anguilla</option>
														<option value="AQ">Antarctica</option>
														<option value="AG">Antigua and Barbuda</option>
														<option value="AR">Argentina</option>
														<option value="AM">Armenia</option>
														<option value="AW">Aruba</option>
														<option value="AU">Australia</option>
														<option value="AT">Austria</option>
														<option value="AZ">Azerbaijan</option>
														<option value="BS">Bahamas</option>
														<option value="BH">Bahrain</option>
														<option value="BD">Bangladesh</option>
														<option value="BB">Barbados</option>
														<option value="BY">Belarus</option>
														<option value="PW">Belau</option>
														<option value="BE">Belgium</option>
														<option value="BZ">Belize</option>
														<option value="BJ">Benin</option>
														<option value="BM">Bermuda</option>
														<option value="BT">Bhutan</option>
														<option value="BO">Bolivia</option>
														<option value="BQ">Bonaire, Saint Eustatius and Saba</option>
														<option value="BA">Bosnia and Herzegovina</option>
														<option value="BW">Botswana</option>
														<option value="BV">Bouvet Island</option>
														<option value="BR">Brazil</option>
														<option value="IO">British Indian Ocean Territory</option>
														<option value="VG">British Virgin Islands</option>
														<option value="BN">Brunei</option>
														<option value="BG">Bulgaria</option>
														<option value="BF">Burkina Faso</option>
														<option value="BI">Burundi</option>
														<option value="KH">Cambodia</option>
														<option value="CM">Cameroon</option>
														<option value="CA">Canada</option>
														<option value="CV">Cape Verde</option>
														<option value="KY">Cayman Islands</option>
														<option value="CF">Central African Republic</option>
														<option value="TD">Chad</option>
														<option value="CL">Chile</option>
														<option value="CN">China</option>
														<option value="CX">Christmas Island</option>
														<option value="CC">Cocos (Keeling) Islands</option>
														<option value="CO">Colombia</option>
														<option value="KM">Comoros</option>
														<option value="CG">Congo (Brazzaville)</option>
														<option value="CD">Congo (Kinshasa)</option>
														<option value="CK">Cook Islands</option>
														<option value="CR">Costa Rica</option>
														<option value="HR">Croatia</option>
														<option value="CU">Cuba</option>
														<option value="CW">Cura�ao</option>
														<option value="CY">Cyprus</option>
														<option value="CZ">Czech Republic</option>
														<option value="DK">Denmark</option>
														<option value="DJ">Djibouti</option>
														<option value="DM">Dominica</option>
														<option value="DO">Dominican Republic</option>
														<option value="EC">Ecuador</option>
														<option value="EG">Egypt</option>
														<option value="SV">El Salvador</option>
														<option value="GQ">Equatorial Guinea</option>
														<option value="ER">Eritrea</option>
														<option value="EE">Estonia</option>
														<option value="ET">Ethiopia</option>
														<option value="FK">Falkland Islands</option>
														<option value="FO">Faroe Islands</option>
														<option value="FJ">Fiji</option>
														<option value="FI">Finland</option>
														<option value="FR">France</option>
														<option value="GF">French Guiana</option>
														<option value="PF">French Polynesia</option>
														<option value="TF">French Southern Territories</option>
														<option value="GA">Gabon</option>
														<option value="GM">Gambia</option>
														<option value="GE">Georgia</option>
														<option value="DE">Germany</option>
														<option value="GH">Ghana</option>
														<option value="GI">Gibraltar</option>
														<option value="GR">Greece</option>
														<option value="GL">Greenland</option>
														<option value="GD">Grenada</option>
														<option value="GP">Guadeloupe</option>
														<option value="GU">Guam</option>
														<option value="GT">Guatemala</option>
														<option value="GG">Guernsey</option>
														<option value="GN">Guinea</option>
														<option value="GW">Guinea-Bissau</option>
														<option value="GY">Guyana</option>
														<option value="HT">Haiti</option>
														<option value="HM">Heard Island and McDonald Islands</option>
														<option value="HN">Honduras</option>
														<option value="HK">Hong Kong</option>
														<option value="HU">Hungary</option>
														<option value="IS">Iceland</option>
														<option value="IN">India</option>
														<option value="ID">Indonesia</option>
														<option value="IR">Iran</option>
														<option value="IQ">Iraq</option>
														<option value="IM">Isle of Man</option>
														<option value="IL">Israel</option>
														<option value="IT">Italy</option>
														<option value="CI">Ivory Coast</option>
														<option value="JM">Jamaica</option>
														<option value="JP">Japan</option>
														<option value="JE">Jersey</option>
														<option value="JO">Jordan</option>
														<option value="KZ">Kazakhstan</option>
														<option value="KE">Kenya</option>
														<option value="KI">Kiribati</option>
														<option value="KW">Kuwait</option>
														<option value="KG">Kyrgyzstan</option>
														<option value="LA">Laos</option>
														<option value="LV">Latvia</option>
														<option value="LB">Lebanon</option>
														<option value="LS">Lesotho</option>
														<option value="LR">Liberia</option>
														<option value="LY">Libya</option>
														<option value="LI">Liechtenstein</option>
														<option value="LT">Lithuania</option>
														<option value="LU">Luxembourg</option>
														<option value="MO">Macao S.A.R., China</option>
														<option value="MK">Macedonia</option>
														<option value="MG">Madagascar</option>
														<option value="MW">Malawi</option>
														<option value="MY">Malaysia</option>
														<option value="MV">Maldives</option>
														<option value="ML">Mali</option>
														<option value="MT">Malta</option>
														<option value="MH">Marshall Islands</option>
														<option value="MQ">Martinique</option>
														<option value="MR">Mauritania</option>
														<option value="MU">Mauritius</option>
														<option value="YT">Mayotte</option>
														<option value="MX">Mexico</option>
														<option value="FM">Micronesia</option>
														<option value="MD">Moldova</option>
														<option value="MC">Monaco</option>
														<option value="MN">Mongolia</option>
														<option value="ME">Montenegro</option>
														<option value="MS">Montserrat</option>
														<option value="MA">Morocco</option>
														<option value="MZ">Mozambique</option>
														<option value="MM">Myanmar</option>
														<option value="NA">Namibia</option>
														<option value="NR">Nauru</option>
														<option value="NP">Nepal</option>
														<option value="NL">Netherlands</option>
														<option value="NC">New Caledonia</option>
														<option value="NZ">New Zealand</option>
														<option value="NI">Nicaragua</option>
														<option value="NE">Niger</option>
														<option value="NG">Nigeria</option>
														<option value="NU">Niue</option>
														<option value="NF">Norfolk Island</option>
														<option value="KP">North Korea</option>
														<option value="MP">Northern Mariana Islands</option>
														<option value="NO">Norway</option>
														<option value="OM">Oman</option>
														<option value="PK">Pakistan</option>
														<option value="PS">Palestinian Territory</option>
														<option value="PA">Panama</option>
														<option value="PG">Papua New Guinea</option>
														<option value="PY">Paraguay</option>
														<option value="PE">Peru</option>
														<option value="PH">Philippines</option>
														<option value="PN">Pitcairn</option>
														<option value="PL">Poland</option>
														<option value="PT">Portugal</option>
														<option value="PR">Puerto Rico</option>
														<option value="QA">Qatar</option>
														<option value="IE">Republic of Ireland</option>
														<option value="RE">Reunion</option>
														<option value="RO">Romania</option>
														<option value="RU">Russia</option>
														<option value="RW">Rwanda</option>
														<option value="ST">S�o Tom� and Pr�ncipe</option>
														<option value="BL">Saint Barth�lemy</option>
														<option value="SH">Saint Helena</option>
														<option value="KN">Saint Kitts and Nevis</option>
														<option value="LC">Saint Lucia</option>
														<option value="SX">Saint Martin (Dutch part)</option>
														<option value="MF">Saint Martin (French part)</option>
														<option value="PM">Saint Pierre and Miquelon</option>
														<option value="VC">Saint Vincent and the Grenadines</option>
														<option value="WS">Samoa</option>
														<option value="SM">San Marino</option>
														<option value="SA">Saudi Arabia</option>
														<option value="SN">Senegal</option>
														<option value="RS">Serbia</option>
														<option value="SC">Seychelles</option>
														<option value="SL">Sierra Leone</option>
														<option value="SG">Singapore</option>
														<option value="SK">Slovakia</option>
														<option value="SI">Slovenia</option>
														<option value="SB">Solomon Islands</option>
														<option value="SO">Somalia</option>
														<option value="ZA">South Africa</option>
														<option value="GS">South Georgia/Sandwich Islands</option>
														<option value="KR">South Korea</option>
														<option value="SS">South Sudan</option>
														<option value="ES">Spain</option>
														<option value="LK">Sri Lanka</option>
														<option value="SD">Sudan</option>
														<option value="SR">Suriname</option>
														<option value="SJ">Svalbard and Jan Mayen</option>
														<option value="SZ">Swaziland</option>
														<option value="SE">Sweden</option>
														<option value="CH">Switzerland</option>
														<option value="SY">Syria</option>
														<option value="TW">Taiwan</option>
														<option value="TJ">Tajikistan</option>
														<option value="TZ">Tanzania</option>
														<option value="TH">Thailand</option>
														<option value="TL">Timor-Leste</option>
														<option value="TG">Togo</option>
														<option value="TK">Tokelau</option>
														<option value="TO">Tonga</option>
														<option value="TT">Trinidad and Tobago</option>
														<option value="TN">Tunisia</option>
														<option value="TR">Turkey</option>
														<option value="TM">Turkmenistan</option>
														<option value="TC">Turks and Caicos Islands</option>
														<option value="TV">Tuvalu</option>
														<option value="UG">Uganda</option>
														<option value="UA">Ukraine</option>
														<option value="AE">United Arab Emirates</option>
														<option value="GB">United Kingdom (UK)</option>
														<option value="US">United States (US)</option>
														<option value="UM">United States (US) Minor Outlying Islands</option>
														<option value="VI">United States (US) Virgin Islands</option>
														<option value="UY">Uruguay</option>
														<option value="UZ">Uzbekistan</option>
														<option value="VU">Vanuatu</option>
														<option value="VA">Vatican</option>
														<option value="VE">Venezuela</option>
														<option value="VN" selected="selected">Vietnam</option>
														<option value="WF">Wallis and Futuna</option>
														<option value="EH">Western Sahara</option>
														<option value="YE">Yemen</option>
														<option value="ZM">Zambia</option>
														<option value="ZW">Zimbabwe</option>
													</select>
													
													<noscript>&lt;input type="submit" name="woocommerce_checkout_update_totals" value="Update country" /&gt;</noscript>
												</p>
												
									<input type="text" class="input-text " name="orid" id="orid" placeholder="" style="display:none;" autocomplete="orid" value="${sessionScope.id}" />
												<p class="form-row form-row form-row-wide address-field validate-required" id="billing_address_1_field">
													<label for="billing_address_1" class="">
														Address 
														<abbr class="required" title="required">*</abbr>
													</label>
													<input type="text" class="input-text " style="width:511px;" name="billing_address_1" id="billing_address_1" placeholder="Street address" autocomplete="address-line1" value="${per.address }" />
												<span id="dingwei"  onclick="locat()"></span>
												</p>
								
												
								
												<p class="form-row form-row address-field validate-postcode form-row-first" id="billing_postcode_field" data-o_class="form-row form-row form-row-last address-field validate-postcode">
													<label for="billing_postcode" class="">Postcode / ZIP</label>
													<input type="text" class="input-text " name="billing_postcode" id="billing_postcode" placeholder="" autocomplete="postal-code" value="${per.postcode}" />
												</p>
												<input type="text" style="display:none;" value="" name="items" id="items"/>
												<input type="text" style="display:none;" value="" name="zong" id="zong"/>
												<p class="form-row form-row address-field validate-required form-row-last" id="billing_city_field" data-o_class="form-row form-row form-row-wide address-field validate-required">
													<label for="billing_city" class="">
														Town / City 
														<abbr class="required" title="required">*</abbr>
													</label>
													<input type="text" class="input-text " name="billing_city" id="billing_city" placeholder="" autocomplete="address-level2" value="${per.city }" />
												</p>
												<input type="text" style="display:none;" name="userid" value="${l.id}"/>
												<p class="form-row form-row address-field validate-state form-row-first" id="billing_state_field" style="display: none" data-o_class="form-row form-row form-row-first address-field validate-state">
													<label for="billing_state" class="">State / County</label>
														
													<input type="hidden" class="hidden" name="billing_state" id="billing_state" value="" placeholder="" />
												</p>
												
												<div class="clear"></div>
												
											
												
												<div class="create-account" style="display: none;">
													<p>Create an account by entering the information below. If you are a returning customer please login at the top of the page.</p>
													
													<p class="form-row form-row validate-required" id="account_password_field">
														<label for="account_password" class="">
															Account password 
															<abbr class="required" title="required">*</abbr>
														</label>
														<input type="password" class="input-text " name="account_password" id="account_password" placeholder="Password" value="" />
													</p>
													
													<div class="clear"></div>
												</div>
											</div>
										</div>
							
										<div class="col-2">
											<div class="woocommerce-shipping-fields">
												
											</div>
										</div>
									</div>
									
									<h3 id="order_review_heading">Your order</h3>
						 
									<div id="order_review" class="woocommerce-checkout-review-order">
										<table class="shop_table woocommerce-checkout-review-order-table">
											<thead>
												<tr>
													<th class="product-name">Product</th>
													<th class="product-total">Total</th>
												</tr>
											</thead>
											
											<tbody id="body">
											<c:forEach var="or1" items="${cart}">
												<tr class="cart_item">
													<td class="product-name">
														<span><c:out value="${or1.gname}"></c:out></span></span>&nbsp;<strong class="product-quantity">&#215; <span><c:out value="${or1.count}"></c:out></span></strong>													
													</td>
													
													<td class="product-total">
														<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">￥</span><span><c:out value="${or1.total}"/></span></span>						
													</td>
												</tr>
												
												</c:forEach>
											</tbody>
											
											<tfoot>
												<tr class="cart-subtotal">
													<th>Subtotal</th>
													
													<td>
														<span class="woocommerce-Price-amount amount">
															<span class="woocommerce-Price-currencySymbol">$</span><span>400</span>
														</span>
													</td>
												</tr>
												
												<tr class="order-total">
													<th>Total</th>
													
													<td>
														<strong>
															<span class="woocommerce-Price-amount amount">
																<span class="woocommerce-Price-currencySymbol">$</span><span>500</span>
															</span>
														</strong> 
													</td>
												</tr>
											</tfoot>
										</table>
										
										<div id="payment" class="woocommerce-checkout-payment">
											<ul class="wc_payment_methods payment_methods methods">
												<li class="wc_payment_method payment_method_cheque">
													<input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="cheque" checked="checked" data-order_button_text="">
													<label for="payment_method_cheque">Check Payments</label>
													<div class="payment_box payment_method_cheque">
														<p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
													</div>
												</li>
												
												<li class="wc_payment_method payment_method_cod">
													<input id="payment_method_cod" type="radio" class="input-radio" name="payment_method" value="cod" data-order_button_text="">
													<label for="payment_method_cod">Cash on Delivery</label>
													<div class="payment_box payment_method_cod" style="display:none;">
														<p>Pay with cash upon delivery.</p>
													</div>
												</li>
												
												<li class="wc_payment_method payment_method_paypal">
													<input id="payment_method_paypal" type="radio" class="input-radio" name="payment_method" value="paypal" data-order_button_text="Proceed to PayPal">
													
													<label for="payment_method_paypal">
														PayPal <img src="../static/assets/images/2003/AM_mc_vs_dc_ae.jpg" alt="PayPal Acceptance Mark">
														<a href="https://www.paypal.com/us/webapps/mpp/paypal-popup" class="about_paypal" onclick="javascript:window.open('https://www.paypal.com/us/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;" title="What is PayPal?">What is PayPal?</a>	
													</label>
												
													<div class="payment_box payment_method_paypal" style="display:none;">
														<p>Pay via PayPal; you can pay with your credit card if you don't have a PayPal account.</p>
													</div>
												</li>
											</ul>
											
											<div class="form-row place-order">
												<noscript>
													Since your browser does not support JavaScript, or it is disabled, please ensure you click the &lt;em&gt;Update Totals&lt;/em&gt; button before placing your order. You may be charged more than the amount stated above if you fail to do so.			&lt;br/&gt;&lt;input type="submit" class="button alt" name="woocommerce_checkout_update_totals" value="Update totals" /&gt;
												</noscript>
												<input type="button" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="Place order" data-value="Place order"onclick="isTrue()" >
											</div>
										</div>
									</div>
								</form>
							
							</div>
						</div>
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
						
						<a href="" data-toggle="modal" data-target="#register_form" title="Register" class="btn-reg-popup">Create an account</a>
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

			<form  action="check" method="post" onsubmit="return Istrue1()" class="register">
				<div class="block-content">
					<div style="border-right:0px; min-height:200px;" class="col-reg registered-account">
					<span id="hei"></span>
						<div class="email-input">
							<input type="text" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" class="form-control input-text username"
								name="reusername" id="reusername" placeholder="Username" onblur="getJQ('reusername')"/>
						</div>
						<div class="pass-input">
							<input class="form-control input-text password" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" type="password"
								placeholder="Password" onblur="pwdlen()" name="repassword" id="repassword" />
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
							<input class="radio1" type="radio"name="sex" id="radio"  value="0"/><span id="title1">Girl</span>
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

	<script type="text/javascript" src="js/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery/js.cookie.min.js"></script>
	<script type="text/javascript" src="js/jquery/jquery.blockUI.min.js"></script>
	
	<script type="text/javascript" src="js/select2/select2.min.js"></script>
	<script type='text/javascript'>
	/* <![CDATA[ */
	var wc_country_select_params = {"countries":"{\"AF\":[],\"AT\":[],\"AX\":[],\"BE\":[],\"BI\":[],\"CZ\":[],\"DE\":[],\"DK\":[],\"EE\":[],\"FI\":[],\"FR\":[],\"IS\":[],\"IL\":[],\"KR\":[],\"NL\":[],\"NO\":[],\"PL\":[],\"PT\":[],\"SG\":[],\"SK\":[],\"SI\":[],\"LK\":[],\"SE\":[],\"VN\":[],\"AR\":{\"C\":\"Ciudad Aut\u00f3noma de Buenos Aires\",\"B\":\"Buenos Aires\",\"K\":\"Catamarca\",\"H\":\"Chaco\",\"U\":\"Chubut\",\"X\":\"C\u00f3rdoba\",\"W\":\"Corrientes\",\"E\":\"Entre R\u00edos\",\"P\":\"Formosa\",\"Y\":\"Jujuy\",\"L\":\"La Pampa\",\"F\":\"La Rioja\",\"M\":\"Mendoza\",\"N\":\"Misiones\",\"Q\":\"Neuqu\u00e9n\",\"R\":\"R\u00edo Negro\",\"A\":\"Salta\",\"J\":\"San Juan\",\"D\":\"San Luis\",\"Z\":\"Santa Cruz\",\"S\":\"Santa Fe\",\"G\":\"Santiago del Estero\",\"V\":\"Tierra del Fuego\",\"T\":\"Tucum\u00e1n\"},\"AU\":{\"ACT\":\"Australian Capital Territory\",\"NSW\":\"New South Wales\",\"NT\":\"Northern Territory\",\"QLD\":\"Queensland\",\"SA\":\"South Australia\",\"TAS\":\"Tasmania\",\"VIC\":\"Victoria\",\"WA\":\"Western Australia\"},\"BD\":{\"BAG\":\"Bagerhat\",\"BAN\":\"Bandarban\",\"BAR\":\"Barguna\",\"BARI\":\"Barisal\",\"BHO\":\"Bhola\",\"BOG\":\"Bogra\",\"BRA\":\"Brahmanbaria\",\"CHA\":\"Chandpur\",\"CHI\":\"Chittagong\",\"CHU\":\"Chuadanga\",\"COM\":\"Comilla\",\"COX\":\"Cox's Bazar\",\"DHA\":\"Dhaka\",\"DIN\":\"Dinajpur\",\"FAR\":\"Faridpur \",\"FEN\":\"Feni\",\"GAI\":\"Gaibandha\",\"GAZI\":\"Gazipur\",\"GOP\":\"Gopalganj\",\"HAB\":\"Habiganj\",\"JAM\":\"Jamalpur\",\"JES\":\"Jessore\",\"JHA\":\"Jhalokati\",\"JHE\":\"Jhenaidah\",\"JOY\":\"Joypurhat\",\"KHA\":\"Khagrachhari\",\"KHU\":\"Khulna\",\"KIS\":\"Kishoreganj\",\"KUR\":\"Kurigram\",\"KUS\":\"Kushtia\",\"LAK\":\"Lakshmipur\",\"LAL\":\"Lalmonirhat\",\"MAD\":\"Madaripur\",\"MAG\":\"Magura\",\"MAN\":\"Manikganj \",\"MEH\":\"Meherpur\",\"MOU\":\"Moulvibazar\",\"MUN\":\"Munshiganj\",\"MYM\":\"Mymensingh\",\"NAO\":\"Naogaon\",\"NAR\":\"Narail\",\"NARG\":\"Narayanganj\",\"NARD\":\"Narsingdi\",\"NAT\":\"Natore\",\"NAW\":\"Nawabganj\",\"NET\":\"Netrakona\",\"NIL\":\"Nilphamari\",\"NOA\":\"Noakhali\",\"PAB\":\"Pabna\",\"PAN\":\"Panchagarh\",\"PAT\":\"Patuakhali\",\"PIR\":\"Pirojpur\",\"RAJB\":\"Rajbari\",\"RAJ\":\"Rajshahi\",\"RAN\":\"Rangamati\",\"RANP\":\"Rangpur\",\"SAT\":\"Satkhira\",\"SHA\":\"Shariatpur\",\"SHE\":\"Sherpur\",\"SIR\":\"Sirajganj\",\"SUN\":\"Sunamganj\",\"SYL\":\"Sylhet\",\"TAN\":\"Tangail\",\"THA\":\"Thakurgaon\"},\"BR\":{\"AC\":\"Acre\",\"AL\":\"Alagoas\",\"AP\":\"Amap\u00e1\",\"AM\":\"Amazonas\",\"BA\":\"Bahia\",\"CE\":\"Cear\u00e1\",\"DF\":\"Distrito Federal\",\"ES\":\"Esp\u00edrito Santo\",\"GO\":\"Goi\u00e1s\",\"MA\":\"Maranh\u00e3o\",\"MT\":\"Mato Grosso\",\"MS\":\"Mato Grosso do Sul\",\"MG\":\"Minas Gerais\",\"PA\":\"Par\u00e1\",\"PB\":\"Para\u00edba\",\"PR\":\"Paran\u00e1\",\"PE\":\"Pernambuco\",\"PI\":\"Piau\u00ed\",\"RJ\":\"Rio de Janeiro\",\"RN\":\"Rio Grande do Norte\",\"RS\":\"Rio Grande do Sul\",\"RO\":\"Rond\u00f4nia\",\"RR\":\"Roraima\",\"SC\":\"Santa Catarina\",\"SP\":\"S\u00e3o Paulo\",\"SE\":\"Sergipe\",\"TO\":\"Tocantins\"},\"BG\":{\"BG-01\":\"Blagoevgrad\",\"BG-02\":\"Burgas\",\"BG-08\":\"Dobrich\",\"BG-07\":\"Gabrovo\",\"BG-26\":\"Haskovo\",\"BG-09\":\"Kardzhali\",\"BG-10\":\"Kyustendil\",\"BG-11\":\"Lovech\",\"BG-12\":\"Montana\",\"BG-13\":\"Pazardzhik\",\"BG-14\":\"Pernik\",\"BG-15\":\"Pleven\",\"BG-16\":\"Plovdiv\",\"BG-17\":\"Razgrad\",\"BG-18\":\"Ruse\",\"BG-27\":\"Shumen\",\"BG-19\":\"Silistra\",\"BG-20\":\"Sliven\",\"BG-21\":\"Smolyan\",\"BG-23\":\"Sofia\",\"BG-22\":\"Sofia-Grad\",\"BG-24\":\"Stara Zagora\",\"BG-25\":\"Targovishte\",\"BG-03\":\"Varna\",\"BG-04\":\"Veliko Tarnovo\",\"BG-05\":\"Vidin\",\"BG-06\":\"Vratsa\",\"BG-28\":\"Yambol\"},\"CA\":{\"AB\":\"Alberta\",\"BC\":\"British Columbia\",\"MB\":\"Manitoba\",\"NB\":\"New Brunswick\",\"NL\":\"Newfoundland and Labrador\",\"NT\":\"Northwest Territories\",\"NS\":\"Nova Scotia\",\"NU\":\"Nunavut\",\"ON\":\"Ontario\",\"PE\":\"Prince Edward Island\",\"QC\":\"Quebec\",\"SK\":\"Saskatchewan\",\"YT\":\"Yukon Territory\"},\"CN\":{\"CN1\":\"Yunnan \\\/ \u4e91\u5357\",\"CN2\":\"Beijing \\\/ \u5317\u4eac\",\"CN3\":\"Tianjin \\\/ \u5929\u6d25\",\"CN4\":\"Hebei \\\/ \u6cb3\u5317\",\"CN5\":\"Shanxi \\\/ \u5c71\u897f\",\"CN6\":\"Inner Mongolia \\\/ \u5167\u8499\u53e4\",\"CN7\":\"Liaoning \\\/ \u8fbd\u5b81\",\"CN8\":\"Jilin \\\/ \u5409\u6797\",\"CN9\":\"Heilongjiang \\\/ \u9ed1\u9f99\u6c5f\",\"CN10\":\"Shanghai \\\/ \u4e0a\u6d77\",\"CN11\":\"Jiangsu \\\/ \u6c5f\u82cf\",\"CN12\":\"Zhejiang \\\/ \u6d59\u6c5f\",\"CN13\":\"Anhui \\\/ \u5b89\u5fbd\",\"CN14\":\"Fujian \\\/ \u798f\u5efa\",\"CN15\":\"Jiangxi \\\/ \u6c5f\u897f\",\"CN16\":\"Shandong \\\/ \u5c71\u4e1c\",\"CN17\":\"Henan \\\/ \u6cb3\u5357\",\"CN18\":\"Hubei \\\/ \u6e56\u5317\",\"CN19\":\"Hunan \\\/ \u6e56\u5357\",\"CN20\":\"Guangdong \\\/ \u5e7f\u4e1c\",\"CN21\":\"Guangxi Zhuang \\\/ \u5e7f\u897f\u58ee\u65cf\",\"CN22\":\"Hainan \\\/ \u6d77\u5357\",\"CN23\":\"Chongqing \\\/ \u91cd\u5e86\",\"CN24\":\"Sichuan \\\/ \u56db\u5ddd\",\"CN25\":\"Guizhou \\\/ \u8d35\u5dde\",\"CN26\":\"Shaanxi \\\/ \u9655\u897f\",\"CN27\":\"Gansu \\\/ \u7518\u8083\",\"CN28\":\"Qinghai \\\/ \u9752\u6d77\",\"CN29\":\"Ningxia Hui \\\/ \u5b81\u590f\",\"CN30\":\"Macau \\\/ \u6fb3\u95e8\",\"CN31\":\"Tibet \\\/ \u897f\u85cf\",\"CN32\":\"Xinjiang \\\/ \u65b0\u7586\"},\"GR\":{\"I\":\"\\u0391\\u03c4\\u03c4\\u03b9\\u03ba\\u03ae\",\"A\":\"\\u0391\\u03bd\\u03b1\\u03c4\\u03bf\\u03bb\\u03b9\\u03ba\\u03ae \\u039c\\u03b1\\u03ba\\u03b5\\u03b4\\u03bf\\u03bd\\u03af\\u03b1 \\u03ba\\u03b1\\u03b9 \\u0398\\u03c1\\u03ac\\u03ba\\u03b7\",\"B\":\"\\u039a\\u03b5\\u03bd\\u03c4\\u03c1\\u03b9\\u03ba\\u03ae \\u039c\\u03b1\\u03ba\\u03b5\\u03b4\\u03bf\\u03bd\\u03af\\u03b1\",\"C\":\"\\u0394\\u03c5\\u03c4\\u03b9\\u03ba\\u03ae \\u039c\\u03b1\\u03ba\\u03b5\\u03b4\\u03bf\\u03bd\\u03af\\u03b1\",\"D\":\"\\u0389\\u03c0\\u03b5\\u03b9\\u03c1\\u03bf\\u03c2\",\"E\":\"\\u0398\\u03b5\\u03c3\\u03c3\\u03b1\\u03bb\\u03af\\u03b1\",\"F\":\"\\u0399\\u03cc\\u03bd\\u03b9\\u03bf\\u03b9 \\u039d\\u03ae\\u03c3\\u03bf\\u03b9\",\"G\":\"\\u0394\\u03c5\\u03c4\\u03b9\\u03ba\\u03ae \\u0395\\u03bb\\u03bb\\u03ac\\u03b4\\u03b1\",\"H\":\"\\u03a3\\u03c4\\u03b5\\u03c1\\u03b5\\u03ac \\u0395\\u03bb\\u03bb\\u03ac\\u03b4\\u03b1\",\"J\":\"\\u03a0\\u03b5\\u03bb\\u03bf\\u03c0\\u03cc\\u03bd\\u03bd\\u03b7\\u03c3\\u03bf\\u03c2\",\"K\":\"\\u0392\\u03cc\\u03c1\\u03b5\\u03b9\\u03bf \\u0391\\u03b9\\u03b3\\u03b1\\u03af\\u03bf\",\"L\":\"\\u039d\\u03cc\\u03c4\\u03b9\\u03bf \\u0391\\u03b9\\u03b3\\u03b1\\u03af\\u03bf\",\"M\":\"\\u039a\\u03c1\\u03ae\\u03c4\\u03b7\"},\"HK\":{\"HONG KONG\":\"Hong Kong Island\",\"KOWLOON\":\"Kowloon\",\"NEW TERRITORIES\":\"New Territories\"},\"HU\":{\"BK\":\"B\\u00e1cs-Kiskun\",\"BE\":\"B\\u00e9k\\u00e9s\",\"BA\":\"Baranya\",\"BZ\":\"Borsod-Aba\\u00faj-Zempl\\u00e9n\",\"BU\":\"Budapest\",\"CS\":\"Csongr\\u00e1d\",\"FE\":\"Fej\\u00e9r\",\"GS\":\"Gy\\u0151r-Moson-Sopron\",\"HB\":\"Hajd\\u00fa-Bihar\",\"HE\":\"Heves\",\"JN\":\"J\\u00e1sz-Nagykun-Szolnok\",\"KE\":\"Kom\\u00e1rom-Esztergom\",\"NO\":\"N\\u00f3gr\\u00e1d\",\"PE\":\"Pest\",\"SO\":\"Somogy\",\"SZ\":\"Szabolcs-Szatm\\u00e1r-Bereg\",\"TO\":\"Tolna\",\"VA\":\"Vas\",\"VE\":\"Veszpr\\u00e9m\",\"ZA\":\"Zala\"},\"IN\":{\"AP\":\"Andhra Pradesh\",\"AR\":\"Arunachal Pradesh\",\"AS\":\"Assam\",\"BR\":\"Bihar\",\"CT\":\"Chhattisgarh\",\"GA\":\"Goa\",\"GJ\":\"Gujarat\",\"HR\":\"Haryana\",\"HP\":\"Himachal Pradesh\",\"JK\":\"Jammu and Kashmir\",\"JH\":\"Jharkhand\",\"KA\":\"Karnataka\",\"KL\":\"Kerala\",\"MP\":\"Madhya Pradesh\",\"MH\":\"Maharashtra\",\"MN\":\"Manipur\",\"ML\":\"Meghalaya\",\"MZ\":\"Mizoram\",\"NL\":\"Nagaland\",\"OR\":\"Orissa\",\"PB\":\"Punjab\",\"RJ\":\"Rajasthan\",\"SK\":\"Sikkim\",\"TN\":\"Tamil Nadu\",\"TS\":\"Telangana\",\"TR\":\"Tripura\",\"UK\":\"Uttarakhand\",\"UP\":\"Uttar Pradesh\",\"WB\":\"West Bengal\",\"AN\":\"Andaman and Nicobar Islands\",\"CH\":\"Chandigarh\",\"DN\":\"Dadar and Nagar Haveli\",\"DD\":\"Daman and Diu\",\"DL\":\"Delhi\",\"LD\":\"Lakshadeep\",\"PY\":\"Pondicherry (Puducherry)\"},\"ID\":{\"AC\":\"Daerah Istimewa Aceh\",\"SU\":\"Sumatera Utara\",\"SB\":\"Sumatera Barat\",\"RI\":\"Riau\",\"KR\":\"Kepulauan Riau\",\"JA\":\"Jambi\",\"SS\":\"Sumatera Selatan\",\"BB\":\"Bangka Belitung\",\"BE\":\"Bengkulu\",\"LA\":\"Lampung\",\"JK\":\"DKI Jakarta\",\"JB\":\"Jawa Barat\",\"BT\":\"Banten\",\"JT\":\"Jawa Tengah\",\"JI\":\"Jawa Timur\",\"YO\":\"Daerah Istimewa Yogyakarta\",\"BA\":\"Bali\",\"NB\":\"Nusa Tenggara Barat\",\"NT\":\"Nusa Tenggara Timur\",\"KB\":\"Kalimantan Barat\",\"KT\":\"Kalimantan Tengah\",\"KI\":\"Kalimantan Timur\",\"KS\":\"Kalimantan Selatan\",\"KU\":\"Kalimantan Utara\",\"SA\":\"Sulawesi Utara\",\"ST\":\"Sulawesi Tengah\",\"SG\":\"Sulawesi Tenggara\",\"SR\":\"Sulawesi Barat\",\"SN\":\"Sulawesi Selatan\",\"GO\":\"Gorontalo\",\"MA\":\"Maluku\",\"MU\":\"Maluku Utara\",\"PA\":\"Papua\",\"PB\":\"Papua Barat\"},\"IR\":{\"KHZ\":\"Khuzestan  (\\u062e\\u0648\\u0632\\u0633\\u062a\\u0627\\u0646)\",\"THR\":\"Tehran  (\\u062a\\u0647\\u0631\\u0627\\u0646)\",\"ILM\":\"Ilaam (\\u0627\\u06cc\\u0644\\u0627\\u0645)\",\"BHR\":\"Bushehr (\\u0628\\u0648\\u0634\\u0647\\u0631)\",\"ADL\":\"Ardabil (\\u0627\\u0631\\u062f\\u0628\\u06cc\\u0644)\",\"ESF\":\"Isfahan (\\u0627\\u0635\\u0641\\u0647\\u0627\\u0646)\",\"YZD\":\"Yazd (\\u06cc\\u0632\\u062f)\",\"KRH\":\"Kermanshah (\\u06a9\\u0631\\u0645\\u0627\\u0646\\u0634\\u0627\\u0647)\",\"KRN\":\"Kerman (\\u06a9\\u0631\\u0645\\u0627\\u0646)\",\"HDN\":\"Hamadan (\\u0647\\u0645\\u062f\\u0627\\u0646)\",\"GZN\":\"Ghazvin (\\u0642\\u0632\\u0648\\u06cc\\u0646)\",\"ZJN\":\"Zanjan (\\u0632\\u0646\\u062c\\u0627\\u0646)\",\"LRS\":\"Luristan (\\u0644\\u0631\\u0633\\u062a\\u0627\\u0646)\",\"ABZ\":\"Alborz (\\u0627\\u0644\\u0628\\u0631\\u0632)\",\"EAZ\":\"East Azarbaijan (\\u0622\\u0630\\u0631\\u0628\\u0627\\u06cc\\u062c\\u0627\\u0646 \\u0634\\u0631\\u0642\\u06cc)\",\"WAZ\":\"West Azarbaijan (\\u0622\\u0630\\u0631\\u0628\\u0627\\u06cc\\u062c\\u0627\\u0646 \\u063a\\u0631\\u0628\\u06cc)\",\"CHB\":\"Chaharmahal and Bakhtiari (\\u0686\\u0647\\u0627\\u0631\\u0645\\u062d\\u0627\\u0644 \\u0648 \\u0628\\u062e\\u062a\\u06cc\\u0627\\u0631\\u06cc)\",\"SKH\":\"South Khorasan (\\u062e\\u0631\\u0627\\u0633\\u0627\\u0646 \\u062c\\u0646\\u0648\\u0628\\u06cc)\",\"RKH\":\"Razavi Khorasan (\\u062e\\u0631\\u0627\\u0633\\u0627\\u0646 \\u0631\\u0636\\u0648\\u06cc)\",\"NKH\":\"North Khorasan (\\u062e\\u0631\\u0627\\u0633\\u0627\\u0646 \\u062c\\u0646\\u0648\\u0628\\u06cc)\",\"SMN\":\"Semnan (\\u0633\\u0645\\u0646\\u0627\\u0646)\",\"FRS\":\"Fars (\\u0641\\u0627\\u0631\\u0633)\",\"QHM\":\"Qom (\\u0642\\u0645)\",\"KRD\":\"Kurdistan \\\/ \\u06a9\\u0631\\u062f\\u0633\\u062a\\u0627\\u0646)\",\"KBD\":\"Kohgiluyeh and BoyerAhmad (\\u06a9\\u0647\\u06af\\u06cc\\u0644\\u0648\\u06cc\\u06cc\\u0647 \\u0648 \\u0628\\u0648\\u06cc\\u0631\\u0627\\u062d\\u0645\\u062f)\",\"GLS\":\"Golestan (\\u06af\\u0644\\u0633\\u062a\\u0627\\u0646)\",\"GIL\":\"Gilan (\\u06af\\u06cc\\u0644\\u0627\\u0646)\",\"MZN\":\"Mazandaran (\\u0645\\u0627\\u0632\\u0646\\u062f\\u0631\\u0627\\u0646)\",\"MKZ\":\"Markazi (\\u0645\\u0631\\u06a9\\u0632\\u06cc)\",\"HRZ\":\"Hormozgan (\\u0647\\u0631\\u0645\\u0632\\u06af\\u0627\\u0646)\",\"SBN\":\"Sistan and Baluchestan (\\u0633\\u06cc\\u0633\\u062a\\u0627\\u0646 \\u0648 \\u0628\\u0644\\u0648\\u0686\\u0633\\u062a\\u0627\\u0646)\"},\"IT\":{\"AG\":\"Agrigento\",\"AL\":\"Alessandria\",\"AN\":\"Ancona\",\"AO\":\"Aosta\",\"AR\":\"Arezzo\",\"AP\":\"Ascoli Piceno\",\"AT\":\"Asti\",\"AV\":\"Avellino\",\"BA\":\"Bari\",\"BT\":\"Barletta-Andria-Trani\",\"BL\":\"Belluno\",\"BN\":\"Benevento\",\"BG\":\"Bergamo\",\"BI\":\"Biella\",\"BO\":\"Bologna\",\"BZ\":\"Bolzano\",\"BS\":\"Brescia\",\"BR\":\"Brindisi\",\"CA\":\"Cagliari\",\"CL\":\"Caltanissetta\",\"CB\":\"Campobasso\",\"CI\":\"Carbonia-Iglesias\",\"CE\":\"Caserta\",\"CT\":\"Catania\",\"CZ\":\"Catanzaro\",\"CH\":\"Chieti\",\"CO\":\"Como\",\"CS\":\"Cosenza\",\"CR\":\"Cremona\",\"KR\":\"Crotone\",\"CN\":\"Cuneo\",\"EN\":\"Enna\",\"FM\":\"Fermo\",\"FE\":\"Ferrara\",\"FI\":\"Firenze\",\"FG\":\"Foggia\",\"FC\":\"Forl\\u00ec-Cesena\",\"FR\":\"Frosinone\",\"GE\":\"Genova\",\"GO\":\"Gorizia\",\"GR\":\"Grosseto\",\"IM\":\"Imperia\",\"IS\":\"Isernia\",\"SP\":\"La Spezia\",\"AQ\":\"L&apos;Aquila\",\"LT\":\"Latina\",\"LE\":\"Lecce\",\"LC\":\"Lecco\",\"LI\":\"Livorno\",\"LO\":\"Lodi\",\"LU\":\"Lucca\",\"MC\":\"Macerata\",\"MN\":\"Mantova\",\"MS\":\"Massa-Carrara\",\"MT\":\"Matera\",\"ME\":\"Messina\",\"MI\":\"Milano\",\"MO\":\"Modena\",\"MB\":\"Monza e della Brianza\",\"NA\":\"Napoli\",\"NO\":\"Novara\",\"NU\":\"Nuoro\",\"OT\":\"Olbia-Tempio\",\"OR\":\"Oristano\",\"PD\":\"Padova\",\"PA\":\"Palermo\",\"PR\":\"Parma\",\"PV\":\"Pavia\",\"PG\":\"Perugia\",\"PU\":\"Pesaro e Urbino\",\"PE\":\"Pescara\",\"PC\":\"Piacenza\",\"PI\":\"Pisa\",\"PT\":\"Pistoia\",\"PN\":\"Pordenone\",\"PZ\":\"Potenza\",\"PO\":\"Prato\",\"RG\":\"Ragusa\",\"RA\":\"Ravenna\",\"RC\":\"Reggio Calabria\",\"RE\":\"Reggio Emilia\",\"RI\":\"Rieti\",\"RN\":\"Rimini\",\"RM\":\"Roma\",\"RO\":\"Rovigo\",\"SA\":\"Salerno\",\"VS\":\"Medio Campidano\",\"SS\":\"Sassari\",\"SV\":\"Savona\",\"SI\":\"Siena\",\"SR\":\"Siracusa\",\"SO\":\"Sondrio\",\"TA\":\"Taranto\",\"TE\":\"Teramo\",\"TR\":\"Terni\",\"TO\":\"Torino\",\"OG\":\"Ogliastra\",\"TP\":\"Trapani\",\"TN\":\"Trento\",\"TV\":\"Treviso\",\"TS\":\"Trieste\",\"UD\":\"Udine\",\"VA\":\"Varese\",\"VE\":\"Venezia\",\"VB\":\"Verbano-Cusio-Ossola\",\"VC\":\"Vercelli\",\"VR\":\"Verona\",\"VV\":\"Vibo Valentia\",\"VI\":\"Vicenza\",\"VT\":\"Viterbo\"},\"JP\":{\"JP01\":\"Hokkaido\",\"JP02\":\"Aomori\",\"JP03\":\"Iwate\",\"JP04\":\"Miyagi\",\"JP05\":\"Akita\",\"JP06\":\"Yamagata\",\"JP07\":\"Fukushima\",\"JP08\":\"Ibaraki\",\"JP09\":\"Tochigi\",\"JP10\":\"Gunma\",\"JP11\":\"Saitama\",\"JP12\":\"Chiba\",\"JP13\":\"Tokyo\",\"JP14\":\"Kanagawa\",\"JP15\":\"Niigata\",\"JP16\":\"Toyama\",\"JP17\":\"Ishikawa\",\"JP18\":\"Fukui\",\"JP19\":\"Yamanashi\",\"JP20\":\"Nagano\",\"JP21\":\"Gifu\",\"JP22\":\"Shizuoka\",\"JP23\":\"Aichi\",\"JP24\":\"Mie\",\"JP25\":\"Shiga\",\"JP26\":\"Kyoto\",\"JP27\":\"Osaka\",\"JP28\":\"Hyogo\",\"JP29\":\"Nara\",\"JP30\":\"Wakayama\",\"JP31\":\"Tottori\",\"JP32\":\"Shimane\",\"JP33\":\"Okayama\",\"JP34\":\"Hiroshima\",\"JP35\":\"Yamaguchi\",\"JP36\":\"Tokushima\",\"JP37\":\"Kagawa\",\"JP38\":\"Ehime\",\"JP39\":\"Kochi\",\"JP40\":\"Fukuoka\",\"JP41\":\"Saga\",\"JP42\":\"Nagasaki\",\"JP43\":\"Kumamoto\",\"JP44\":\"Oita\",\"JP45\":\"Miyazaki\",\"JP46\":\"Kagoshima\",\"JP47\":\"Okinawa\"},\"MY\":{\"JHR\":\"Johor\",\"KDH\":\"Kedah\",\"KTN\":\"Kelantan\",\"LBN\":\"Labuan\",\"MLK\":\"Malacca (Melaka)\",\"NSN\":\"Negeri Sembilan\",\"PHG\":\"Pahang\",\"PNG\":\"Penang (Pulau Pinang)\",\"PRK\":\"Perak\",\"PLS\":\"Perlis\",\"SBH\":\"Sabah\",\"SWK\":\"Sarawak\",\"SGR\":\"Selangor\",\"TRG\":\"Terengganu\",\"PJY\":\"Putrajaya\",\"KUL\":\"Kuala Lumpur\"},\"MX\":{\"Distrito Federal\":\"Distrito Federal\",\"Jalisco\":\"Jalisco\",\"Nuevo Leon\":\"Nuevo Le\\u00f3n\",\"Aguascalientes\":\"Aguascalientes\",\"Baja California\":\"Baja California\",\"Baja California Sur\":\"Baja California Sur\",\"Campeche\":\"Campeche\",\"Chiapas\":\"Chiapas\",\"Chihuahua\":\"Chihuahua\",\"Coahuila\":\"Coahuila\",\"Colima\":\"Colima\",\"Durango\":\"Durango\",\"Guanajuato\":\"Guanajuato\",\"Guerrero\":\"Guerrero\",\"Hidalgo\":\"Hidalgo\",\"Estado de Mexico\":\"Edo. de M\\u00e9xico\",\"Michoacan\":\"Michoac\\u00e1n\",\"Morelos\":\"Morelos\",\"Nayarit\":\"Nayarit\",\"Oaxaca\":\"Oaxaca\",\"Puebla\":\"Puebla\",\"Queretaro\":\"Quer\\u00e9taro\",\"Quintana Roo\":\"Quintana Roo\",\"San Luis Potosi\":\"San Luis Potos\\u00ed\",\"Sinaloa\":\"Sinaloa\",\"Sonora\":\"Sonora\",\"Tabasco\":\"Tabasco\",\"Tamaulipas\":\"Tamaulipas\",\"Tlaxcala\":\"Tlaxcala\",\"Veracruz\":\"Veracruz\",\"Yucatan\":\"Yucat\\u00e1n\",\"Zacatecas\":\"Zacatecas\"},\"NP\":{\"BAG\":\"Bagmati\",\"BHE\":\"Bheri\",\"DHA\":\"Dhawalagiri\",\"GAN\":\"Gandaki\",\"JAN\":\"Janakpur\",\"KAR\":\"Karnali\",\"KOS\":\"Koshi\",\"LUM\":\"Lumbini\",\"MAH\":\"Mahakali\",\"MEC\":\"Mechi\",\"NAR\":\"Narayani\",\"RAP\":\"Rapti\",\"SAG\":\"Sagarmatha\",\"SET\":\"Seti\"},\"NZ\":{\"NL\":\"Northland\",\"AK\":\"Auckland\",\"WA\":\"Waikato\",\"BP\":\"Bay of Plenty\",\"TK\":\"Taranaki\",\"GI\":\"Gisborne\",\"HB\":\"Hawke\u2019s Bay\",\"MW\":\"Manawatu-Wanganui\",\"WE\":\"Wellington\",\"NS\":\"Nelson\",\"MB\":\"Marlborough\",\"TM\":\"Tasman\",\"WC\":\"West Coast\",\"CT\":\"Canterbury\",\"OT\":\"Otago\",\"SL\":\"Southland\"},\"PE\":{\"CAL\":\"El Callao\",\"LMA\":\"Municipalidad Metropolitana de Lima\",\"AMA\":\"Amazonas\",\"ANC\":\"Ancash\",\"APU\":\"Apur\u00edmac\",\"ARE\":\"Arequipa\",\"AYA\":\"Ayacucho\",\"CAJ\":\"Cajamarca\",\"CUS\":\"Cusco\",\"HUV\":\"Huancavelica\",\"HUC\":\"Hu\u00e1nuco\",\"ICA\":\"Ica\",\"JUN\":\"Jun\u00edn\",\"LAL\":\"La Libertad\",\"LAM\":\"Lambayeque\",\"LIM\":\"Lima\",\"LOR\":\"Loreto\",\"MDD\":\"Madre de Dios\",\"MOQ\":\"Moquegua\",\"PAS\":\"Pasco\",\"PIU\":\"Piura\",\"PUN\":\"Puno\",\"SAM\":\"San Mart\u00edn\",\"TAC\":\"Tacna\",\"TUM\":\"Tumbes\",\"UCA\":\"Ucayali\"},\"PH\":{\"ABR\":\"Abra\",\"AGN\":\"Agusan del Norte\",\"AGS\":\"Agusan del Sur\",\"AKL\":\"Aklan\",\"ALB\":\"Albay\",\"ANT\":\"Antique\",\"APA\":\"Apayao\",\"AUR\":\"Aurora\",\"BAS\":\"Basilan\",\"BAN\":\"Bataan\",\"BTN\":\"Batanes\",\"BTG\":\"Batangas\",\"BEN\":\"Benguet\",\"BIL\":\"Biliran\",\"BOH\":\"Bohol\",\"BUK\":\"Bukidnon\",\"BUL\":\"Bulacan\",\"CAG\":\"Cagayan\",\"CAN\":\"Camarines Norte\",\"CAS\":\"Camarines Sur\",\"CAM\":\"Camiguin\",\"CAP\":\"Capiz\",\"CAT\":\"Catanduanes\",\"CAV\":\"Cavite\",\"CEB\":\"Cebu\",\"COM\":\"Compostela Valley\",\"NCO\":\"Cotabato\",\"DAV\":\"Davao del Norte\",\"DAS\":\"Davao del Sur\",\"DAC\":\"Davao Occidental\",\"DAO\":\"Davao Oriental\",\"DIN\":\"Dinagat Islands\",\"EAS\":\"Eastern Samar\",\"GUI\":\"Guimaras\",\"IFU\":\"Ifugao\",\"ILN\":\"Ilocos Norte\",\"ILS\":\"Ilocos Sur\",\"ILI\":\"Iloilo\",\"ISA\":\"Isabela\",\"KAL\":\"Kalinga\",\"LUN\":\"La Union\",\"LAG\":\"Laguna\",\"LAN\":\"Lanao del Norte\",\"LAS\":\"Lanao del Sur\",\"LEY\":\"Leyte\",\"MAG\":\"Maguindanao\",\"MAD\":\"Marinduque\",\"MAS\":\"Masbate\",\"MSC\":\"Misamis Occidental\",\"MSR\":\"Misamis Oriental\",\"MOU\":\"Mountain Province\",\"NEC\":\"Negros Occidental\",\"NER\":\"Negros Oriental\",\"NSA\":\"Northern Samar\",\"NUE\":\"Nueva Ecija\",\"NUV\":\"Nueva Vizcaya\",\"MDC\":\"Occidental Mindoro\",\"MDR\":\"Oriental Mindoro\",\"PLW\":\"Palawan\",\"PAM\":\"Pampanga\",\"PAN\":\"Pangasinan\",\"QUE\":\"Quezon\",\"QUI\":\"Quirino\",\"RIZ\":\"Rizal\",\"ROM\":\"Romblon\",\"WSA\":\"Samar\",\"SAR\":\"Sarangani\",\"SIQ\":\"Siquijor\",\"SOR\":\"Sorsogon\",\"SCO\":\"South Cotabato\",\"SLE\":\"Southern Leyte\",\"SUK\":\"Sultan Kudarat\",\"SLU\":\"Sulu\",\"SUN\":\"Surigao del Norte\",\"SUR\":\"Surigao del Sur\",\"TAR\":\"Tarlac\",\"TAW\":\"Tawi-Tawi\",\"ZMB\":\"Zambales\",\"ZAN\":\"Zamboanga del Norte\",\"ZAS\":\"Zamboanga del Sur\",\"ZSI\":\"Zamboanga Sibugay\",\"00\":\"Metro Manila\"},\"ZA\":{\"EC\":\"Eastern Cape\",\"FS\":\"Free State\",\"GP\":\"Gauteng\",\"KZN\":\"KwaZulu-Natal\",\"LP\":\"Limpopo\",\"MP\":\"Mpumalanga\",\"NC\":\"Northern Cape\",\"NW\":\"North West\",\"WC\":\"Western Cape\"},\"ES\":{\"C\":\"A Coru\u00f1a\",\"VI\":\"Araba\\\/\u00c1lava\",\"AB\":\"Albacete\",\"A\":\"Alicante\",\"AL\":\"Almer\u00eda\",\"O\":\"Asturias\",\"AV\":\"\u00c1vila\",\"BA\":\"Badajoz\",\"PM\":\"Baleares\",\"B\":\"Barcelona\",\"BU\":\"Burgos\",\"CC\":\"C\u00e1ceres\",\"CA\":\"C\u00e1diz\",\"S\":\"Cantabria\",\"CS\":\"Castell\u00f3n\",\"CE\":\"Ceuta\",\"CR\":\"Ciudad Real\",\"CO\":\"C\u00f3rdoba\",\"CU\":\"Cuenca\",\"GI\":\"Girona\",\"GR\":\"Granada\",\"GU\":\"Guadalajara\",\"SS\":\"Gipuzkoa\",\"H\":\"Huelva\",\"HU\":\"Huesca\",\"J\":\"Ja\u00e9n\",\"LO\":\"La Rioja\",\"GC\":\"Las Palmas\",\"LE\":\"Le\u00f3n\",\"L\":\"Lleida\",\"LU\":\"Lugo\",\"M\":\"Madrid\",\"MA\":\"M\u00e1laga\",\"ML\":\"Melilla\",\"MU\":\"Murcia\",\"NA\":\"Navarra\",\"OR\":\"Ourense\",\"P\":\"Palencia\",\"PO\":\"Pontevedra\",\"SA\":\"Salamanca\",\"TF\":\"Santa Cruz de Tenerife\",\"SG\":\"Segovia\",\"SE\":\"Sevilla\",\"SO\":\"Soria\",\"T\":\"Tarragona\",\"TE\":\"Teruel\",\"TO\":\"Toledo\",\"V\":\"Valencia\",\"VA\":\"Valladolid\",\"BI\":\"Bizkaia\",\"ZA\":\"Zamora\",\"Z\":\"Zaragoza\"},\"TH\":{\"TH-37\":\"Amnat Charoen (\u0e2d\u0e33\u0e19\u0e32\u0e08\u0e40\u0e08\u0e23\u0e34\u0e0d)\",\"TH-15\":\"Ang Thong (\u0e2d\u0e48\u0e32\u0e07\u0e17\u0e2d\u0e07)\",\"TH-14\":\"Ayutthaya (\u0e1e\u0e23\u0e30\u0e19\u0e04\u0e23\u0e28\u0e23\u0e35\u0e2d\u0e22\u0e38\u0e18\u0e22\u0e32)\",\"TH-10\":\"Bangkok (\u0e01\u0e23\u0e38\u0e07\u0e40\u0e17\u0e1e\u0e21\u0e2b\u0e32\u0e19\u0e04\u0e23)\",\"TH-38\":\"Bueng Kan (\u0e1a\u0e36\u0e07\u0e01\u0e32\u0e2c)\",\"TH-31\":\"Buri Ram (\u0e1a\u0e38\u0e23\u0e35\u0e23\u0e31\u0e21\u0e22\u0e4c)\",\"TH-24\":\"Chachoengsao (\u0e09\u0e30\u0e40\u0e0a\u0e34\u0e07\u0e40\u0e17\u0e23\u0e32)\",\"TH-18\":\"Chai Nat (\u0e0a\u0e31\u0e22\u0e19\u0e32\u0e17)\",\"TH-36\":\"Chaiyaphum (\u0e0a\u0e31\u0e22\u0e20\u0e39\u0e21\u0e34)\",\"TH-22\":\"Chanthaburi (\u0e08\u0e31\u0e19\u0e17\u0e1a\u0e38\u0e23\u0e35)\",\"TH-50\":\"Chiang Mai (\u0e40\u0e0a\u0e35\u0e22\u0e07\u0e43\u0e2b\u0e21\u0e48)\",\"TH-57\":\"Chiang Rai (\u0e40\u0e0a\u0e35\u0e22\u0e07\u0e23\u0e32\u0e22)\",\"TH-20\":\"Chonburi (\u0e0a\u0e25\u0e1a\u0e38\u0e23\u0e35)\",\"TH-86\":\"Chumphon (\u0e0a\u0e38\u0e21\u0e1e\u0e23)\",\"TH-46\":\"Kalasin (\u0e01\u0e32\u0e2c\u0e2a\u0e34\u0e19\u0e18\u0e38\u0e4c)\",\"TH-62\":\"Kamphaeng Phet (\u0e01\u0e33\u0e41\u0e1e\u0e07\u0e40\u0e1e\u0e0a\u0e23)\",\"TH-71\":\"Kanchanaburi (\u0e01\u0e32\u0e0d\u0e08\u0e19\u0e1a\u0e38\u0e23\u0e35)\",\"TH-40\":\"Khon Kaen (\u0e02\u0e2d\u0e19\u0e41\u0e01\u0e48\u0e19)\",\"TH-81\":\"Krabi (\u0e01\u0e23\u0e30\u0e1a\u0e35\u0e48)\",\"TH-52\":\"Lampang (\u0e25\u0e33\u0e1b\u0e32\u0e07)\",\"TH-51\":\"Lamphun (\u0e25\u0e33\u0e1e\u0e39\u0e19)\",\"TH-42\":\"Loei (\u0e40\u0e25\u0e22)\",\"TH-16\":\"Lopburi (\u0e25\u0e1e\u0e1a\u0e38\u0e23\u0e35)\",\"TH-58\":\"Mae Hong Son (\u0e41\u0e21\u0e48\u0e2e\u0e48\u0e2d\u0e07\u0e2a\u0e2d\u0e19)\",\"TH-44\":\"Maha Sarakham (\u0e21\u0e2b\u0e32\u0e2a\u0e32\u0e23\u0e04\u0e32\u0e21)\",\"TH-49\":\"Mukdahan (\u0e21\u0e38\u0e01\u0e14\u0e32\u0e2b\u0e32\u0e23)\",\"TH-26\":\"Nakhon Nayok (\u0e19\u0e04\u0e23\u0e19\u0e32\u0e22\u0e01)\",\"TH-73\":\"Nakhon Pathom (\u0e19\u0e04\u0e23\u0e1b\u0e10\u0e21)\",\"TH-48\":\"Nakhon Phanom (\u0e19\u0e04\u0e23\u0e1e\u0e19\u0e21)\",\"TH-30\":\"Nakhon Ratchasima (\u0e19\u0e04\u0e23\u0e23\u0e32\u0e0a\u0e2a\u0e35\u0e21\u0e32)\",\"TH-60\":\"Nakhon Sawan (\u0e19\u0e04\u0e23\u0e2a\u0e27\u0e23\u0e23\u0e04\u0e4c)\",\"TH-80\":\"Nakhon Si Thammarat (\u0e19\u0e04\u0e23\u0e28\u0e23\u0e35\u0e18\u0e23\u0e23\u0e21\u0e23\u0e32\u0e0a)\",\"TH-55\":\"Nan (\u0e19\u0e48\u0e32\u0e19)\",\"TH-96\":\"Narathiwat (\u0e19\u0e23\u0e32\u0e18\u0e34\u0e27\u0e32\u0e2a)\",\"TH-39\":\"Nong Bua Lam Phu (\u0e2b\u0e19\u0e2d\u0e07\u0e1a\u0e31\u0e27\u0e25\u0e33\u0e20\u0e39)\",\"TH-43\":\"Nong Khai (\u0e2b\u0e19\u0e2d\u0e07\u0e04\u0e32\u0e22)\",\"TH-12\":\"Nonthaburi (\u0e19\u0e19\u0e17\u0e1a\u0e38\u0e23\u0e35)\",\"TH-13\":\"Pathum Thani (\u0e1b\u0e17\u0e38\u0e21\u0e18\u0e32\u0e19\u0e35)\",\"TH-94\":\"Pattani (\u0e1b\u0e31\u0e15\u0e15\u0e32\u0e19\u0e35)\",\"TH-82\":\"Phang Nga (\u0e1e\u0e31\u0e07\u0e07\u0e32)\",\"TH-93\":\"Phatthalung (\u0e1e\u0e31\u0e17\u0e25\u0e38\u0e07)\",\"TH-56\":\"Phayao (\u0e1e\u0e30\u0e40\u0e22\u0e32)\",\"TH-67\":\"Phetchabun (\u0e40\u0e1e\u0e0a\u0e23\u0e1a\u0e39\u0e23\u0e13\u0e4c)\",\"TH-76\":\"Phetchaburi (\u0e40\u0e1e\u0e0a\u0e23\u0e1a\u0e38\u0e23\u0e35)\",\"TH-66\":\"Phichit (\u0e1e\u0e34\u0e08\u0e34\u0e15\u0e23)\",\"TH-65\":\"Phitsanulok (\u0e1e\u0e34\u0e29\u0e13\u0e38\u0e42\u0e25\u0e01)\",\"TH-54\":\"Phrae (\u0e41\u0e1e\u0e23\u0e48)\",\"TH-83\":\"Phuket (\u0e20\u0e39\u0e40\u0e01\u0e47\u0e15)\",\"TH-25\":\"Prachin Buri (\u0e1b\u0e23\u0e32\u0e08\u0e35\u0e19\u0e1a\u0e38\u0e23\u0e35)\",\"TH-77\":\"Prachuap Khiri Khan (\u0e1b\u0e23\u0e30\u0e08\u0e27\u0e1a\u0e04\u0e35\u0e23\u0e35\u0e02\u0e31\u0e19\u0e18\u0e4c)\",\"TH-85\":\"Ranong (\u0e23\u0e30\u0e19\u0e2d\u0e07)\",\"TH-70\":\"Ratchaburi (\u0e23\u0e32\u0e0a\u0e1a\u0e38\u0e23\u0e35)\",\"TH-21\":\"Rayong (\u0e23\u0e30\u0e22\u0e2d\u0e07)\",\"TH-45\":\"Roi Et (\u0e23\u0e49\u0e2d\u0e22\u0e40\u0e2d\u0e47\u0e14)\",\"TH-27\":\"Sa Kaeo (\u0e2a\u0e23\u0e30\u0e41\u0e01\u0e49\u0e27)\",\"TH-47\":\"Sakon Nakhon (\u0e2a\u0e01\u0e25\u0e19\u0e04\u0e23)\",\"TH-11\":\"Samut Prakan (\u0e2a\u0e21\u0e38\u0e17\u0e23\u0e1b\u0e23\u0e32\u0e01\u0e32\u0e23)\",\"TH-74\":\"Samut Sakhon (\u0e2a\u0e21\u0e38\u0e17\u0e23\u0e2a\u0e32\u0e04\u0e23)\",\"TH-75\":\"Samut Songkhram (\u0e2a\u0e21\u0e38\u0e17\u0e23\u0e2a\u0e07\u0e04\u0e23\u0e32\u0e21)\",\"TH-19\":\"Saraburi (\u0e2a\u0e23\u0e30\u0e1a\u0e38\u0e23\u0e35)\",\"TH-91\":\"Satun (\u0e2a\u0e15\u0e39\u0e25)\",\"TH-17\":\"Sing Buri (\u0e2a\u0e34\u0e07\u0e2b\u0e4c\u0e1a\u0e38\u0e23\u0e35)\",\"TH-33\":\"Sisaket (\u0e28\u0e23\u0e35\u0e2a\u0e30\u0e40\u0e01\u0e29)\",\"TH-90\":\"Songkhla (\u0e2a\u0e07\u0e02\u0e25\u0e32)\",\"TH-64\":\"Sukhothai (\u0e2a\u0e38\u0e42\u0e02\u0e17\u0e31\u0e22)\",\"TH-72\":\"Suphan Buri (\u0e2a\u0e38\u0e1e\u0e23\u0e23\u0e13\u0e1a\u0e38\u0e23\u0e35)\",\"TH-84\":\"Surat Thani (\u0e2a\u0e38\u0e23\u0e32\u0e29\u0e0e\u0e23\u0e4c\u0e18\u0e32\u0e19\u0e35)\",\"TH-32\":\"Surin (\u0e2a\u0e38\u0e23\u0e34\u0e19\u0e17\u0e23\u0e4c)\",\"TH-63\":\"Tak (\u0e15\u0e32\u0e01)\",\"TH-92\":\"Trang (\u0e15\u0e23\u0e31\u0e07)\",\"TH-23\":\"Trat (\u0e15\u0e23\u0e32\u0e14)\",\"TH-34\":\"Ubon Ratchathani (\u0e2d\u0e38\u0e1a\u0e25\u0e23\u0e32\u0e0a\u0e18\u0e32\u0e19\u0e35)\",\"TH-41\":\"Udon Thani (\u0e2d\u0e38\u0e14\u0e23\u0e18\u0e32\u0e19\u0e35)\",\"TH-61\":\"Uthai Thani (\u0e2d\u0e38\u0e17\u0e31\u0e22\u0e18\u0e32\u0e19\u0e35)\",\"TH-53\":\"Uttaradit (\u0e2d\u0e38\u0e15\u0e23\u0e14\u0e34\u0e15\u0e16\u0e4c)\",\"TH-95\":\"Yala (\u0e22\u0e30\u0e25\u0e32)\",\"TH-35\":\"Yasothon (\u0e22\u0e42\u0e2a\u0e18\u0e23)\"},\"TR\":{\"TR01\":\"Adana\",\"TR02\":\"Ad\u0131yaman\",\"TR03\":\"Afyon\",\"TR04\":\"A\u011fr\u0131\",\"TR05\":\"Amasya\",\"TR06\":\"Ankara\",\"TR07\":\"Antalya\",\"TR08\":\"Artvin\",\"TR09\":\"Ayd\u0131n\",\"TR10\":\"Bal\u0131kesir\",\"TR11\":\"Bilecik\",\"TR12\":\"Bing\u00f6l\",\"TR13\":\"Bitlis\",\"TR14\":\"Bolu\",\"TR15\":\"Burdur\",\"TR16\":\"Bursa\",\"TR17\":\"\u00c7anakkale\",\"TR18\":\"\u00c7ank\u0131r\u0131\",\"TR19\":\"\u00c7orum\",\"TR20\":\"Denizli\",\"TR21\":\"Diyarbak\u0131r\",\"TR22\":\"Edirne\",\"TR23\":\"Elaz\u0131\u011f\",\"TR24\":\"Erzincan\",\"TR25\":\"Erzurum\",\"TR26\":\"Eski\u015fehir\",\"TR27\":\"Gaziantep\",\"TR28\":\"Giresun\",\"TR29\":\"G\u00fcm\u00fc\u015fhane\",\"TR30\":\"Hakkari\",\"TR31\":\"Hatay\",\"TR32\":\"Isparta\",\"TR33\":\"\u0130\u00e7el\",\"TR34\":\"\u0130stanbul\",\"TR35\":\"\u0130zmir\",\"TR36\":\"Kars\",\"TR37\":\"Kastamonu\",\"TR38\":\"Kayseri\",\"TR39\":\"K\u0131rklareli\",\"TR40\":\"K\u0131r\u015fehir\",\"TR41\":\"Kocaeli\",\"TR42\":\"Konya\",\"TR43\":\"K\u00fctahya\",\"TR44\":\"Malatya\",\"TR45\":\"Manisa\",\"TR46\":\"Kahramanmara\u015f\",\"TR47\":\"Mardin\",\"TR48\":\"Mu\u011fla\",\"TR49\":\"Mu\u015f\",\"TR50\":\"Nev\u015fehir\",\"TR51\":\"Ni\u011fde\",\"TR52\":\"Ordu\",\"TR53\":\"Rize\",\"TR54\":\"Sakarya\",\"TR55\":\"Samsun\",\"TR56\":\"Siirt\",\"TR57\":\"Sinop\",\"TR58\":\"Sivas\",\"TR59\":\"Tekirda\u011f\",\"TR60\":\"Tokat\",\"TR61\":\"Trabzon\",\"TR62\":\"Tunceli\",\"TR63\":\"\u015eanl\u0131urfa\",\"TR64\":\"U\u015fak\",\"TR65\":\"Van\",\"TR66\":\"Yozgat\",\"TR67\":\"Zonguldak\",\"TR68\":\"Aksaray\",\"TR69\":\"Bayburt\",\"TR70\":\"Karaman\",\"TR71\":\"K\u0131r\u0131kkale\",\"TR72\":\"Batman\",\"TR73\":\"\u015e\u0131rnak\",\"TR74\":\"Bart\u0131n\",\"TR75\":\"Ardahan\",\"TR76\":\"I\u011fd\u0131r\",\"TR77\":\"Yalova\",\"TR78\":\"Karab\u00fck\",\"TR79\":\"Kilis\",\"TR80\":\"Osmaniye\",\"TR81\":\"D\u00fczce\"},\"US\":{\"AL\":\"Alabama\",\"AK\":\"Alaska\",\"AZ\":\"Arizona\",\"AR\":\"Arkansas\",\"CA\":\"California\",\"CO\":\"Colorado\",\"CT\":\"Connecticut\",\"DE\":\"Delaware\",\"DC\":\"District Of Columbia\",\"FL\":\"Florida\",\"GA\":\"Georgia\",\"HI\":\"Hawaii\",\"ID\":\"Idaho\",\"IL\":\"Illinois\",\"IN\":\"Indiana\",\"IA\":\"Iowa\",\"KS\":\"Kansas\",\"KY\":\"Kentucky\",\"LA\":\"Louisiana\",\"ME\":\"Maine\",\"MD\":\"Maryland\",\"MA\":\"Massachusetts\",\"MI\":\"Michigan\",\"MN\":\"Minnesota\",\"MS\":\"Mississippi\",\"MO\":\"Missouri\",\"MT\":\"Montana\",\"NE\":\"Nebraska\",\"NV\":\"Nevada\",\"NH\":\"New Hampshire\",\"NJ\":\"New Jersey\",\"NM\":\"New Mexico\",\"NY\":\"New York\",\"NC\":\"North Carolina\",\"ND\":\"North Dakota\",\"OH\":\"Ohio\",\"OK\":\"Oklahoma\",\"OR\":\"Oregon\",\"PA\":\"Pennsylvania\",\"RI\":\"Rhode Island\",\"SC\":\"South Carolina\",\"SD\":\"South Dakota\",\"TN\":\"Tennessee\",\"TX\":\"Texas\",\"UT\":\"Utah\",\"VT\":\"Vermont\",\"VA\":\"Virginia\",\"WA\":\"Washington\",\"WV\":\"West Virginia\",\"WI\":\"Wisconsin\",\"WY\":\"Wyoming\",\"AA\":\"Armed Forces (AA)\",\"AE\":\"Armed Forces (AE)\",\"AP\":\"Armed Forces (AP)\"}}","i18n_select_state_text":"Select an option\u2026","i18n_matches_1":"One result is available, press enter to select it.","i18n_matches_n":"%qty% results are available, use up and down arrow keys to navigate.","i18n_no_matches":"No matches found","i18n_ajax_error":"Loading failed","i18n_input_too_short_1":"Please enter 1 or more characters","i18n_input_too_short_n":"Please enter %qty% or more characters","i18n_input_too_long_1":"Please delete 1 character","i18n_input_too_long_n":"Please delete %qty% characters","i18n_selection_too_long_1":"You can only select 1 item","i18n_selection_too_long_n":"You can only select %qty% items","i18n_load_more":"Loading more results\u2026","i18n_searching":"Searching\u2026"};
	/* ]]> */
	</script>
	<script type="text/javascript" src="js/woocommerce/country-select.min.js"></script>
	<script type='text/javascript'>
	/* <![CDATA[ */
	var wc_address_i18n_params = {"locale":"{\"AE\":{\"postcode\":{\"required\":false,\"hidden\":true}},\"AF\":{\"state\":{\"required\":false}},\"AT\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"AU\":{\"city\":{\"label\":\"Suburb\"},\"postcode\":{\"label\":\"Postcode\"},\"state\":{\"label\":\"State\"}},\"AX\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"BD\":{\"postcode\":{\"required\":false},\"state\":{\"label\":\"District\"}},\"BE\":{\"postcode_before_city\":true,\"state\":{\"required\":false,\"label\":\"Province\"}},\"BI\":{\"state\":{\"required\":false}},\"BO\":{\"postcode\":{\"required\":false,\"hidden\":true}},\"BS\":{\"postcode\":{\"required\":false,\"hidden\":true}},\"CA\":{\"state\":{\"label\":\"Province\"}},\"CH\":{\"postcode_before_city\":true,\"state\":{\"label\":\"Canton\",\"required\":false}},\"CL\":{\"city\":{\"required\":true},\"postcode\":{\"required\":false},\"state\":{\"label\":\"Region\"}},\"CN\":{\"state\":{\"label\":\"Province\"}},\"CO\":{\"postcode\":{\"required\":false}},\"CZ\":{\"state\":{\"required\":false}},\"DE\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"DK\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"EE\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"FI\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"FR\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"HK\":{\"postcode\":{\"required\":false},\"city\":{\"label\":\"Town \\\/ District\"},\"state\":{\"label\":\"Region\"}},\"HU\":{\"state\":{\"label\":\"County\"}},\"ID\":{\"state\":{\"label\":\"Province\"}},\"IE\":{\"postcode\":{\"required\":false,\"label\":\"Postcode\"}},\"IS\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"IL\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"IT\":{\"postcode_before_city\":true,\"state\":{\"required\":true,\"label\":\"Province\"}},\"JP\":{\"state\":{\"label\":\"Prefecture\"}},\"KR\":{\"state\":{\"required\":false}},\"NL\":{\"postcode_before_city\":true,\"state\":{\"required\":false,\"label\":\"Province\"}},\"NZ\":{\"postcode\":{\"label\":\"Postcode\"},\"state\":{\"required\":false,\"label\":\"Region\"}},\"NO\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"NP\":{\"state\":{\"label\":\"State \\\/ Zone\"},\"postcode\":{\"required\":false}},\"PL\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"PT\":{\"state\":{\"required\":false}},\"RO\":{\"state\":{\"required\":false}},\"SG\":{\"state\":{\"required\":false}},\"SK\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"SI\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"ES\":{\"postcode_before_city\":true,\"state\":{\"label\":\"Province\"}},\"LI\":{\"postcode_before_city\":true,\"state\":{\"label\":\"Municipality\",\"required\":false}},\"LK\":{\"state\":{\"required\":false}},\"SE\":{\"postcode_before_city\":true,\"state\":{\"required\":false}},\"TR\":{\"postcode_before_city\":true,\"state\":{\"label\":\"Province\"}},\"US\":{\"postcode\":{\"label\":\"ZIP\"},\"state\":{\"label\":\"State\"}},\"GB\":{\"postcode\":{\"label\":\"Postcode\"},\"state\":{\"label\":\"County\",\"required\":false}},\"VN\":{\"postcode_before_city\":true,\"state\":{\"required\":false},\"postcode\":{\"required\":false,\"hidden\":false},\"address_2\":{\"required\":false,\"hidden\":true}},\"WS\":{\"postcode\":{\"required\":false,\"hidden\":true}},\"ZA\":{\"state\":{\"label\":\"Province\"}},\"ZW\":{\"postcode\":{\"required\":false,\"hidden\":true}},\"default\":{\"first_name\":{\"label\":\"First Name\",\"required\":true,\"class\":[\"form-row-first\"],\"autocomplete\":\"given-name\"},\"last_name\":{\"label\":\"Last Name\",\"required\":true,\"class\":[\"form-row-last\"],\"clear\":true,\"autocomplete\":\"family-name\"},\"company\":{\"label\":\"Company Name\",\"class\":[\"form-row-wide\"],\"autocomplete\":\"organization\"},\"country\":{\"type\":\"country\",\"label\":\"Country\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\",\"update_totals_on_change\"],\"autocomplete\":\"country\"},\"address_1\":{\"label\":\"Address\",\"placeholder\":\"Street address\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"autocomplete\":\"address-line1\"},\"address_2\":{\"placeholder\":\"Apartment, suite, unit etc. (optional)\",\"class\":[\"form-row-wide\",\"address-field\"],\"required\":false,\"autocomplete\":\"address-line2\"},\"city\":{\"label\":\"Town \\\/ City\",\"required\":true,\"class\":[\"form-row-wide\",\"address-field\"],\"autocomplete\":\"address-level2\"},\"state\":{\"type\":\"state\",\"label\":\"State \\\/ County\",\"required\":true,\"class\":[\"form-row-first\",\"address-field\"],\"validate\":[\"state\"],\"autocomplete\":\"address-level1\"},\"postcode\":{\"label\":\"Postcode \\\/ ZIP\",\"required\":true,\"class\":[\"form-row-last\",\"address-field\"],\"clear\":true,\"validate\":[\"postcode\"],\"autocomplete\":\"postal-code\"}}}","locale_fields":"{\"address_1\":\"#billing_address_1_field, #shipping_address_1_field\",\"address_2\":\"#billing_address_2_field, #shipping_address_2_field\",\"state\":\"#billing_state_field, #shipping_state_field, #calc_shipping_state_field\",\"postcode\":\"#billing_postcode_field, #shipping_postcode_field, #calc_shipping_postcode_field\",\"city\":\"#billing_city_field, #shipping_city_field, #calc_shipping_city_field\"}","i18n_required_text":"required"};
	/* ]]> */
	</script>
	<script type="text/javascript" src="js/woocommerce/address-i18n.min.js"></script>
	<script type='text/javascript'>
	/* <![CDATA[ */
	var wc_checkout_params = {"ajax_url":"","wc_ajax_url":"","update_order_review_nonce":"1aa1fb54e5","apply_coupon_nonce":"bd3d1dc06d","remove_coupon_nonce":"0d367c9fe4","option_guest_checkout":"yes","checkout_url":"\/themes\/sw_shoppy\/?page_id=28&wc-ajax=checkout","is_checkout":"1","debug_mode":"","i18n_checkout_error":"Error processing checkout. Please try again."};
	/* ]]> */
	</script>
	
	<!-- OPEN LIBS JS -->
	<script type="text/javascript" src="js/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/slick-1.6.0/slick.min.js"></script>
	
	<script type="text/javascript" src="js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
	<script type="text/javascript" src="js/sw_core/isotope.js"></script>
	<script type="text/javascript" src="js/sw_core/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="js/sw_woocommerce/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="js/woocommerce/checkout.js"></script>
	<script type="text/javascript" src="js/js_composer/js_composer_front.min.js"></script>
	
	<script type="text/javascript" src="js/plugins.js"></script>
	<script type="text/javascript" src="js/megamenu.min.js"></script>
	<script type="text/javascript" src="js/main.min.js"></script>
   		<script src="js/saveTip.js" type="text/javascript"></script> 
   		 <script type="text/javascript" src="http://webapi.amap.com/maps?v=1.4.1&key=3dc15cf550bd808c74ce52f1093e5d00"></script>
  <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
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
var list=new Array();
var b=false;

/* order(); */
 function true1(){
	
	if($("#body tr").length<=0){
		 $.alertWindow("请先选购商品！");
		return false;
	}else{
		return true;
	}
}
function isTrue(){

	$("#forn").submit();
	order();
	  
}

function order(){
	
	 var trlen=$("#body tr").length;
	for(var i=0;i<trlen;i++){
		list[i]={orid:$("#orid").val(),gname:$("#body tr:eq("+i+") td:eq(0) span:eq(0)").text(),gcount:$("#body tr:eq("+i+") td:eq(0) span:eq(1)").text(),gtotal:$("#body tr:eq("+i+") td:eq(1) span span+span").text(),userid:$("#userid1").val()};
	}
	
	for(var i=0;i<trlen;i++){
		console.log(list[i]);
	}
	$.get("downr",{"array":JSON.stringify(list)},function(data){	
		}
		
	);
}

lis();
function lis(){
	var smalltotal=0;
	var smalltotal1=0;
	var l=$("#li1 li").length;
	$("#li3 #num").text(l);
	$(".cart-contents:eq(1)").text(l);
	var cou=0;
	
	for(var i=0;i<l;i++){
	
		var c1=$("#li2 .product-price span span span+span:eq("+i+")").text();

		var cou1=$("#li1 .qty span:eq("+i+")").text();
		
		var t1=parseInt(c1,0);
	
		var j1=0;
		
		j1=t1*cou1;

		smalltotal1+=j1;
	
		$("#li1 .cart-checkout:eq(0) span+span span span span+span").text(smalltotal1);
		$("#li2 .cart-checkout span+span span span span+span").text(smalltotal1);
		
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
				alert("注册失败！请联系管理员！");
			}
		 
	 });
	 
	 
 }
</script>
<script type="text/javascript">
function doPost(to,p){
	var myForm =document.createElement("form");
	myForm.method="post";
	myForm.action=to;
	for(var i in p){
		var myInput=document.createElement("input");
		myInput.setAttribute("name",i);
		myInput.setAttribute("value",p[i]);
		myForm.appendChild(myInput);
	}
	document.body.appendChild(myForm);
	myForm.submit();
	document.body.removeChild(myForm);
}

</script>
<c:if test="${empty l}">
		
	<script>
		
	$.alertWindow("请先登录");
	location.href="index.jsp";	
	</script>
	

</c:if>
<div id='container'></div>

<script type="text/javascript">
  /***************************************
   由于Chrome、IOS10等已不再支持非安全域的浏览器定位请求，为保证定位成功率和精度，请尽快升级您的站点到HTTPS。
   ***************************************/
  var map, geolocation;
  var loca="";
  //加载地图，调用浏览器定位服务
  map = new AMap.Map('container', {
    resizeEnable: true
  });
  map.plugin('AMap.Geolocation', function() {
    geolocation = new AMap.Geolocation({
      enableHighAccuracy: true,//是否使用高精度定位，默认:true
      timeout: 10000,          //超过10秒后停止定位，默认：无穷大
      buttonOffset: new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
      zoomToAccuracy: true,      //定位成功后调整地图视野范围使定位位置及精度范围视野内可见，默认：false
      buttonPosition:'RB'
    });
    map.addControl(geolocation);
    geolocation.getCurrentPosition();
    AMap.event.addListener(geolocation, 'complete', onComplete);//返回定位信息
    AMap.event.addListener(geolocation, 'error', onError);      //返回定位出错信息
  });
  //解析定位结果
  function onComplete(data) {
    var str=['定位成功'];
    loca=data.formattedAddress;
    str.push('经度：' + data.position.getLng());
    str.push('纬度：' + data.position.getLat());
    if(data.accuracy){
      str.push('精度：' + data.accuracy + ' 米');
    }//如为IP精确定位结果则没有精度信息
    str.push('是否经过偏移：' + (data.isConverted ? '是' : '否'));

  }
  
 function locat(){
	  $("#billing_address_1").val(loca);
  }

</script>

   </body>
   
</html>

