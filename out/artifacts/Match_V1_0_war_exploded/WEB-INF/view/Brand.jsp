<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/24 0024
  Time: 下午 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String path=request.getContextPath();%>
<%@include file="/WEB-INF/view/comn.jsp" %>

<html>
<head>
    <script src="<%=path%>/static/B-js/managerGoods.js?version=<%=Math.random()%>"></script>
    <title>Title</title>
    <style type="text/css">
        body{margin: 0;}
        .main{
            width: 600px;
            margin-top: 10px;
            margin-left:auto;
            margin-right:auto;
        }
        .table{width: 100%;background-color: transparent;border-collapse:collapse;border-spacing:0}
        .table th,.table td{padding:8px;line-height:20px;text-align: center;}
        .table-border{border-top:1px solid #ddd;}
        .table-border th,.table-border td{border-bottom: 1px solid #ddd;}
        .table-bg thead{background-color: #f5fafe;}
        .tableselected{background-color: #f5fafe;}
        .table-bordered{border:1px solid #ddd;border-collapse:separate;*border-collapse:collapse;border-left:0}
        .table-bordered th,.table-bordered td{border-left:1px solid #ddd}
        .table-border.table-bordered{border-bottom:0}
        .table-hover tbody tr:hover td{background-color:#f5f5f5}
    </style>
</head>
<body>
<h1>品牌商登录！</h1>
<div class="main" >
    <table class="table table-border table-bordered table-bg  table-hover">
        <thead>
        <tr>
            <th width="25"><input type="checkbox" name="" value="" ></th>
            <th width="75">ID</th>
            <th width="120">名字</th>
            <th width="80">公司</th>
            <th width="130">价格</th>
            <th width="170">操作</th>
            <th width="170">商店架</th>
            <th width="170">pic</th>
            <th width="170">状态</th>
            <th width="170">descr</th>
            <th width="170">clicknum</th>
            <th width="170">添加时间</th>
            <th width="170">state</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${sessionScope.cart}">
        <tr >
            <td><input type="checkbox" value="1" name=""></td>
            <td>${user.id}</td>
            <td>${user.name}<input type="hidden" value="${user.id}" class="gid"/></td>
            <td>${user.typeid}</td>
            <td>${user.company}</td>
            <td>${user.price}</td>
            <td>${user.store}</td>
            <td>${user.pic}</td>
            <td>${user.status}</td>
            <td>${user.descr}</td>
            <td>${user.clicknum}</td>
            <td>${user.addtime}</td>
            <td>${user.state}</td>
            <td ><a title="删除" onClick="   article_del(${user.id})" href="javascript:;">删除</a><a title="修改" onClick="   updateG(${user.id})" href="javascript:;">修改</a></td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    <div id="update" style="display:none" >
        <h1>修改</h1>
        <form method="post" id="up">
            商品名<input type="text" title="name" name="name" id="name1"/><br>
            所属类 ID<input type="text" title="typeid" name="typeid" id="typeid1"/><br>
            厂商<input type="text" title="company" name="company" id="company1"/><br>
            价格<input type="text" title="price" name="price" id="price1"/><br>
            store<input type="text" title="store" name="store" id="store1"/><br>
            图片<input type="file" title="pic" name="pic" id="pic1"/><br>
            状态<input type="text" title="status" name="status" id="status1"/><br>
            热度<input type="text" title="clicknum" name="clicknum" id="clicknum1" /><br>
            添加时间<input title="text" title="timer" name="addtime" id="addtime1"/><br>
            state<input type="text" title="state" name="state" id="state1"/><br>
            描述<input type="textArea" name="descr"  id="descr1"/><br>
            <input type="button" id="submit1" onclick="updateMassage()" value="提交"/><br>
        </form>
    </div>
</div>
<form id="addGoods"method="post"
      enctype="multipart/form-data">
    商品名<input type="text" title="name" name="name" id="name"/>
   所属类 ID<input type="text" title="typeid" name="typeid" id="typeid"/><br/>
    厂商<input type="text" title="company" name="company" id="company"/><br/>
    价格<input type="text" title="price" name="price" id="price"/><br/>
    store<input type="text" title="store" name="store" id="store"/><br/>
    图片<input type="file" title="pic" name="pic" id="pic"/><br/>
    状态<input type="text" title="status" name="status" id="status"/><br/>
    热度<input type="text" title="clicknum" name="clicknum" id="clicknum" /><br/>
    添加时间<input title="text" title="timer" name="addtime" id="addtime"/><br/>
    state<input type="text" title="state" name="state" id="state"/><br/>
    描述<input type="textArea" name="descr"  id="descr"/><br/>
        <input type="button" id="submit" onclick="addGoods()" value="提交"/><br/>
</form>
<form id="updateGoods"method="post"
      enctype="multipart/form-data" hidden>
    <input value="id" title="id" name="id" id="id2" hidden/>
    商品名<input type="text" title="name" name="name" id="name2"/>
    所属类 ID<input type="text" title="typeid" name="typeid" id="typeid2"/><br/>
    厂商<input type="text" title="company" name="company" id="company2"/><br/>
    价格<input type="text" title="price" name="price" id="price3"/><br/>
    store<input type="text" title="store" name="store" id="store3"/><br/>
    图片<input type="file" accept="image/png,image/gif"  title="pic" name="pic" id="pic3"/><br/>
    状态<input type="text" title="status" name="status" id="status3"/><br/>
    热度<input type="text" title="clicknum" name="clicknum" id="clicknum3" /><br/>
    添加时间<input title="text" title="timer" name="addtime" id="addtime3"/><br/>
    state<input type="text" title="state" name="state" id="state3"/><br/>
    描述<input type="text" name="descr"  id="descr3"/><br/>
    <input type="button" id="submit3" onclick="update()" value="提交"/><br/>
</form>
</body>
<script>

</script>

</html>
