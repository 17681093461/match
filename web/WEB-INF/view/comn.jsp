<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/22 0022
  Time: 下午 18:07
  To change this template use File | Settings | File Templates.
--%>

<%String path1 = request.getContextPath(); %>
<script type="text/javascript" src="<%=path1%>/static/pageJs/jquery.min.js"></script>

<script>

    var path="<%=path1%>/";
    var PicPath="G:/文件练习/Match-V1.0\\out/artifacts/Match_V1_0_war_exploded/GoodPic";

    function query() {
        var name="";
        var state="";
        $.ajax({url:path+"cart/query",async:false,data:{name:name,state:state,success:function(data){

                }}})
    }

</script>
