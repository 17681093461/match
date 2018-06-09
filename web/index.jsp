<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/21 0021
  Time: 下午 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String path=request.getContextPath();%>
<%@include file="/WEB-INF/view/comn.jsp" %>
<script src="static/B-js/index.js?version=<%=Math.random()%>"></script>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>联众商贸</title>
    <meta name="keywords" content="Bootstrapģ��,Bootstrapģ������,Bootstrap�̳�,Bootstrap����" />
    <meta name="description" content="JS�������ṩBootstrapģ��,Bootstrap�̳�,Bootstrap���ķ�������Bootstrap�������" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- basic styles -->

    <link href="./static/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="./static/assets/css/font-awesome.min.css" />

    <!--[if IE 7]>
    <link rel="stylesheet" href="./static/assets/css/font-awesome-ie7.min.css" />
    <![endif]-->

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="./static/assets/css/dropzone.css" />
    <!-- fonts -->



    <!-- ace styles -->

    <link rel="stylesheet" href="./static/assets/css/ace.min.css" />
    <link rel="stylesheet" href="./static/assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="./static/assets/css/ace-skins.min.css" />
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="./static/assets/css/ace-ie.min.css" />



    <!--[if lte IE 8]>
    <link rel="stylesheet" href="assets//static/assets/css/ace-ie.min.css" />
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->



    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>
<!-- inline styles related to this page -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="./static/assets/js/ace-extra.min.js"></script>
    <script src="./static/assets/js/html5shiv.js"></script>
    <script src="./static/assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="login-layout">
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>
                            <i class="icon-leaf green"></i>
                            <span class="red">联众</span>
                            <span class="white">平台</span>
                        </h1>
                        <h4 class="blue">&copy; 联众</h4>
                    </div>

                    <div class="space-6"></div>

                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger">
                                        <i class="icon-coffee green"></i>
                                        请输入您的账号和密码
                                    </h4>

                                    <div class="space-6"></div>

                                    <form >
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="用户名" id="Username"/>
															<i class="icon-user"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码" id="Password" />
															<i class="icon-lock"></i>
														</span>
                                            </label>
                                            <div class="space"></div>
                                            <div class="clearfix">
                                                <label class="inline">
                                                    <input type="checkbox" class="ace" />
                                                    <span class="lbl"> 记住密码</span>
                                                </label>

                                                <button type="button" ONCLICK="login()" class="width-35 pull-right btn btn-sm btn-primary">
                                                    <i class="icon-key"></i>
                                                   登录
                                                </button>
                                            </div>

                                            <div class="space-4"></div>
                                        </fieldset>
                                    </form>

                                    <div class="social-or-login center">
                                        <span class="bigger-110">第三方登录</span>
                                    </div>

                                    <div class="social-login center">
                                        <a class="btn btn-primary">
                                            <i class="icon-facebook"></i>
                                        </a>

                                        <a class="btn btn-info">
                                            <i class="icon-twitter"></i>
                                        </a>

                                        <a class="btn btn-danger">
                                            <i class="icon-google-plus"></i>
                                        </a>
                                    </div>
                                </div><!-- /widget-main -->

                                <div class="toolbar clearfix">
                                    <div>
                                        <a href="#" onclick="show_box('forgot-box'); return false;" class="forgot-password-link">
                                            <i class="icon-arrow-left"></i>
                                           忘记密码？
                                        </a>
                                    </div>

                                    <div>
                                        <a href="#" onclick="show_box('signup-box'); return false;" class="user-signup-link">
                                            注册一个？
                                            <i class="icon-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- /widget-body -->
                        </div><!-- /login-box -->

                        <div id="forgot-box" class="forgot-box widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header red lighter bigger">
                                        <i class="icon-key"></i>
                                        找回密码
                                    </h4>

                                    <div class="space-6"></div>
                                    <p>
                                        请输入绑定邮箱以方便找回
                                    </p>

                                    <form>
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="电子邮箱" />
															<i class="icon-envelope"></i>
														</span>
                                            </label>

                                            <div class="clearfix">
                                                <button type="button" class="width-35 pull-right btn btn-sm btn-danger">
                                                    <i class="icon-lightbulb"></i>
                                                    发送
                                                </button>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div><!-- /widget-main -->

                                <div class="toolbar center">
                                    <a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
                                        返回到登录
                                        <i class="icon-arrow-right"></i>
                                    </a>
                                </div>
                            </div><!-- /widget-body -->
                        </div><!-- /forgot-box -->

                        <div id="signup-box" class="signup-box widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header green lighter bigger">
                                        <i class="icon-group blue"></i>
                                        新建一个账户
                                    </h4>

                                    <div class="space-6"></div>
                                    <form  enctype="multipart/form-data" method="post" id="register">
                                        <fieldset>
                                            <label class="block clearfix" id="sh" style="cursor:pointer;background: rgb(251, 141, 4);box-shadow: 5px 1px 14px #e9a713eb;">
														<span class="block input-icon input-icon-right" style=" margin-bottom: 6px;">
															<input type="file" class="form-control" id="head" style="opacity: 0"  placeholder="head" name="head" />
                                                            <i class="icon-user" id="iuser" style="right:50%;"></i><span id="ih" style=" position: relative;float: left;left: 37%;color:#ce2b2b">上传头像</span><i class="icon-ok" id="ok"  style="color:#f7f4f4;display: none;right:50%;width:20px;height:40px;top: 17%;font-size: 42px;"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" onfocus="onbule()" name="email" id="remail" class="form-control" placeholder="电子邮箱"  />
															<i class="icon-envelope"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="brand" id="rbrand" class="form-control" placeholder="品牌商" />
															<i class="icon-barcode"></i>
														</span>
                                            </label>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" list="itemList" id="type1" name="type1" class="form-control" placeholder="用户类别" />
                                                            <datalist id="itemList">
                                                                    <option >品牌商</option>
                                                                    <option >借买方</option>
                                                                </datalist>
															<i class="icon-list"></i>
														</span>
                                            </label>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="username" id="rusername"  class="form-control" placeholder="用户名" />
															<i class="icon-user"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" name="password" id="rpassword" class="form-control" placeholder="密码" />
															<i class="icon-lock"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" id="repeat" class="form-control" placeholder="确认密码" />
															<i class="icon-retweet"></i>
														</span>
                                            </label>

                                            <label class="block" onchange="ace()">
                                                <input type="checkbox" class="ace"    id="ace" />
                                                <span class="lbl">
															我接受
															<a href="#">用户使用条例</a>
														</span>
                                            </label>

                                            <div class="space-24"></div>

                                            <div class="clearfix">
                                                <button type="reset" id="reset" class="width-30 pull-left btn btn-sm">
                                                    <i class="icon-refresh"></i>
                                                    重置
                                                </button>

                                                <button type="button"  onclick="register()" disabled id="sub" class="width-65 pull-right btn btn-sm btn-success" >
                                                    创建
                                                    <i class="icon-arrow-right icon-on-right"></i>
                                                </button>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>

                                <div class="toolbar center">
                                    <a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
                                        <i class="icon-arrow-left"></i>
                                        返回到登录
                                    </a>
                                </div>
                            </div><!-- /widget-body -->
                        </div><!-- /signup-box -->
                    </div><!-- /position-relative -->
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div>
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->

<script src="./static/assets/js/jquery.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

<!--[if !IE]> -->

<script type="text/javascript">
    window.jQuery || document.write("<script src='./static/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='./static/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

<script type="text/javascript">
    if("ontouchend" in document) document.write("<script src='./static/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
    function show_box(id) {
        jQuery('.widget-box.visible').removeClass('visible');
        jQuery('#'+id).addClass('visible');
    }



</script>

<%--<script src="./static/assets/js/dropzone.min.js"></script>--%>

<%--<!--&lt;!&ndash; ace scripts &ndash;&gt;-->--%>

<%--<script src="./static/assets/js/ace-elements.min.js"></script>--%>
<%--<script src="./static/assets/js/ace.min.js"></script>--%>
<%--<script src="./static/assets/js/dropzone.min.js"></script>--%>
<%--<script type="text/javascript">--%>
    <%--jQuery(function($){--%>

        <%--try {--%>
            <%--$(".dropzone").dropzone({--%>
                <%--paramName: "file", // The name that will be used to transfer the file--%>
                <%--maxFilesize: 0.5, // MB--%>

                <%--addRemoveLinks : true,--%>
                <%--dictDefaultMessage :--%>
                    <%--'<span class="bigger-150 bolder"><i class="icon-caret-right red"></i> Drop files</span> to upload \--%>
                    <%--<span class="smaller-80 grey">(or click)</span> <br /> \--%>
                    <%--<i class="upload-icon icon-cloud-upload blue icon-3x"></i>'--%>
                <%--,--%>
                <%--dictResponseError: 'Error while uploading file!',--%>

                <%--//change the previewTemplate to use Bootstrap progress bars--%>
                <%--previewTemplate: "<div class=\"dz-preview dz-file-preview\">\n  <div class=\"dz-details\">\n    <div class=\"dz-filename\"><span data-dz-name></span></div>\n    <div class=\"dz-size\" data-dz-size></div>\n    <img data-dz-thumbnail />\n  </div>\n  <div class=\"progress progress-small progress-striped active\"><div class=\"progress-bar progress-bar-success\" data-dz-uploadprogress></div></div>\n  <div class=\"dz-success-mark\"><span></span></div>\n  <div class=\"dz-error-mark\"><span></span></div>\n  <div class=\"dz-error-message\"><span data-dz-errormessage></span></div>\n</div>"--%>
            <%--});--%>
        <%--} catch(e) {--%>
            <%--alert('Dropzone.js does not support older browsers!');--%>
        <%--}--%>

    <%--});--%>
<%--</script>--%>
</body>
</html>
