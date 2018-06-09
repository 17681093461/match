<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/24 0024
  Time: 下午 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/comn.jsp" %>

<%
    String path=request.getContextPath();

%>
<html>
<head>
    <script src="<%=path%>/static/buy/Buy.js?version=<%=Math.random()%>"></script>
    <title>商城页</title>
</head>
<body>
<c:set var="k" value="${sessionScope.user}"></c:set>
<c:set var="k1" value="${requestScope.r}"></c:set>
${k1}
<c:if var ="s" test="${k1}">
    <script>
        var l=${s};
        if(l=='1'){
            alert("11111");
        }

        window.location.reload();
        window.location.href="?r=2";

    </script>
</c:if>

<c:forEach var="s" items="${sessionScope.cart}">
    <div style="width: 100px;height: 200px;">
        <img src="../static/GoodPic/${s.pic}"style="height: 60px;width: 60px;display: block;" />
        <span>${s.name}</span><br/>
        $<span>${s.price}</span><br/>
        descr：<span>${s.descr}</span>
    </div>
</c:forEach>
余额:${k.money}<a href="javaScript:void(0)"  onclick="addMoney()">充值</a>
</body>
</html>
