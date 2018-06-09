// window.onload=function(){
//     showsGoods();
// }

function  showsGoods() {
    var name="";
    var state="";

     $.ajax({url:path+"cart/query",data:{name:name,state:state},dataType:"json",type:"post",success:function(date){
         if(date.status==1){

         }
         }});}








    // window.location.href=path+"cart/query";
