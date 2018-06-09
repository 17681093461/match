$(function(){
    query();

})



function timer(){
    var time=new Date();
    var m=time.toLocaleDateString();
    return  m;
}
function addGoods(){
    $.ajax({
        url:path+"/cart/addGoods",
        type: 'POST',
        data: new FormData($("#addGoods")[0]),
        // async: false,
        cache: false,
        contentType: false,
        processData: false,
        dataType:"json",
        success: function (response) {
            if(response.success==1){
                query();
                window.location.reload();
            }else{
               alert("网络异常！");
            }
        }
    })

}
var Gid;
// $('#Goods tr:eq(1) td a').live("click",function(){
//      alert($(this).parent().length);
// });
function  deleteGoods(a){
        var l=$(a).parent().index();//列
      var h= $(a).parent().parent().index();//行
    // alert(h+"列"+ l);
   // alert($("#goods tbody tr:nth-child("+h+") ").text());
        var rows=$("#goods tbody tr:eq('+a+') ");
        console.log(id);
        alert(id);

}

$("table thead th input:checkbox").on(
    "click" ,
    function(){
        $(this).closest("table").find("tr > td:first-child input:checkbox").prop("checked",$(this).prop("checked"));

    }
);
$("table tbody tr input:checkbox").on("click",
    function(){
        var ischeck = $(this).prop("checked");
        if(ischeck == false)
        {
            $(this).closest("table").find("tr > th:first-child input:checkbox").prop("checked",$(this).prop("checked"));
        }
    }
);

/*删除*/
function article_del(obj){
    var res = confirm('确认要删除吗？');
    if(res){
        $.ajax({
            url:path+"cart/delG",
            data:{id:obj},type:"get",dataType:"json",success:function(data){
                if(data.status==1){
                    query();
                    window.location.reload();
                }else{
                    alert("删除失败");
                }
            }
        })
    }else{}

}
function updateG(s){
    $("#updateGoods").attr("hidden",false);
    $("#id2").val(s);
}
function  update() {
    $.ajax({
        url: path + "/cart/UPG",
        type: 'POST',
        data: new FormData($("#updateGoods")[0]),
        // async: false,
        cache: false,
        contentType: false,
        processData: false,
        dataType: "json",
        success: function (response) {
            if (response.success == 1) {
                query();
                window.location.reload();
            } else {
                alert("网络异常！");
            }
        }
    })

}
