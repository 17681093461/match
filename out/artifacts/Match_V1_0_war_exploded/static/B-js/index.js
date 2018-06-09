$(function(){
    reigister_Check();
})
var check="";
function login(){
 console.log(path);
    var username=$("#Username").val();
    var password=$("#Password").val();
    var data={};
    var type1= $("input[name='user']:checked").val();
    data.username=username;
    data.password=password;
    $.ajax({url:path+"B/login",data:data,type:"post",dataType:"json",success:function(data){
        if(data.status==1){
            window.location.href=path+data.urli;
        }else if(data.status==-1){
            alert("账户不存在！请检查");
        }else if(data.status==-2){
            alert("禁止重复登录");
        }else if(data.status==-3){
            alert("账号处于审核状态！暂不能登录！");
        }else{
            alert("账号或密码错误");
        }
        }})
}
function register(){
    var username=$("#rusername").val();
    var password=$("#rpassword").val();
    var head=$("#head").val();
    var email=$("#remail").val();
    var brand=$("#rbrand").val();

    // var check_input=$("#check").val();
    if(username==""||password==""||brand==""||head==""||email==""){
        alert("内容不能为空");
        return false;
    }

    // if(check!=check_input){
    //     check_inputcheck();
    //     return false;
    // }
    if($("#rpassword").val()!=$("#repeat").val()){
        alert("密码不一致");
        return false;
    }

    $.ajax({
        url:path+"B/register",
        type: 'POST',
        data: new FormData($("#register")[0]),
        // async: false,
        cache: false,
        contentType: false,
        processData: false,
        dataType:"json",
        success: function (response) {
            if(response.status==1){
                $('#reset').trigger("click");
                alert("注冊成功,已提交请等待审核！");
            }else if(response.status==-1){
                alert("用户名已存在");
            }else{
                alert("网络异常");
            }
        }
    })


}

function reigister_Check(){

    $.ajax({
        url:path+"B/register-YanZheng",
        type:"post",
        async:false,
        dataType:"json",
        success:function(data){
            console.log(data.checkNumber);
            $("#c0").text(data.checkNumber[0]);
            $("#c1").text(data.checkNumber[1]);
            $("#c2").text(data.checkNumber[2]);
            $("#c3").text(data.checkNumber[3]);
            check =data.checkNumber[0]+""+data.checkNumber[1]+""+data.checkNumber[2]+""+data.checkNumber[3]+"";

    }
    })
}

//验证错误显示出错
function check_inputcheck(){
$("#tips").css({"display":"block"});
$("#check").val("");

}

//重名检测
function checkName(){

   var  username=$("#username").val();

    $.ajax({url:path+"B/checkUserName",data:{username:username},type:"get",contentType:"application/json",dataType:"json",success:function(data){
                if(data.status){
                        $("#checkName").css({"display":"block"});
                }else{

                    $("#checkName").css({"display":"none"});
                }

    }});



}
function k(){
    check="";
    reigister_Check();
}

function checkBrand(){
    if($("#brand").val()==1){
        $("#brandName1").css({"display":"block"});
    }else{
        $("#brandName1").css({"display":"none"});
    }
}

ace()

function ace(){
var b=$("#ace").is(":checked");
  if(b==false){
      $("#sub").attr("disabled",true);
  }else {
      $("#sub").attr("disabled",false);
  }

}
function onbule(){
    if($("#pic").val().length>1){
        $("#sh").css("background","rgb(92, 220, 11)");
        $("#sh").css("box-shadow","5px 1px 14px rgb(92, 220, 11)");
$("#iuser").css("display","none");
$("#ih").css("display","none");
$("#ok").css("display","block");
    };
}