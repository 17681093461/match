package com.Match.Controller.Brand.Brand;


import com.Match.Entity.User;

import com.Match.Service.imp.Login;
import com.Match.Util.MD5Util;
import com.alibaba.fastjson.JSONObject;
import com.sun.deploy.net.HttpRequest;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@RestController
@RequestMapping("/B")
public class UserController {
    ArrayList list=new ArrayList();
@Resource
    private Login l;
@RequestMapping("/login")
@ResponseBody
    public String  select( User user,HttpSession session){
String url="";
    User CU=l.checkLogin(user);
    User u=new User();
    int status=0;
    u=(User) session.getAttribute("user");
Boolean Bo=false;
if(u!=null&&!"".equals(u)){
    Bo=true;
}
if(Bo){//判斷是否登錄過了
    status=-2;
}else {


    if ("".equals(CU) || CU == null) {//用戶是否存在
        status = -1;
    } else {
        User U = l.login(user);
        if(U.getVerify()==0){
            status=-3;
        }else{
            if ("".equals(U) || U == null) {//密碼是否正確
                status = 0;
            } else {
                session.setAttribute("user", user);
                status = 1;
                if (U.getType1() == 0) {
                    url = "B/ToJieMai";
                } else if (U.getType1() == 1) {
                    url = "B/ToBrand";
                } else if (U.getType1() == 2) {
                    url = "B/ToAdmin";
                }
            }
        }

    }
}
    JSONObject json=new JSONObject();
        json.put("status",status);
        json.put("urli",url);
    return json.toString();
}
@RequestMapping("/ToBrand")
public ModelAndView ToMain(){
    ModelAndView mv=new ModelAndView("Brand");
return mv;
}
@RequestMapping("/ToAdmin")
    public ModelAndView ToAdmin(){
    ModelAndView mv=new ModelAndView("admin");
        return mv;
     }
@RequestMapping(value = "/ToJieMai")
    public ModelAndView ToJieMain(){
    ModelAndView mv=new ModelAndView("shop");
        return mv;
    }
@RequestMapping(value = "/register",produces = "text/html;charset=utf-8")
@ResponseBody
    public String login(@RequestParam("head") List<MultipartFile > file, String username, String password,  String email,  String type1, String brand , HttpServletRequest req, HttpSession session) throws IOException {
    JSONObject json=new JSONObject();
    Date time =new Date();

    String savePath=req.getServletContext().getRealPath("\\userHead");
    Date d=new Date();
    List<String> listName=new ArrayList<>();
    if(file!=null&&file.size()>0){
        String fileName="";
        File target=null;
        for(MultipartFile f:file){
            if("".equals(f.getOriginalFilename())){
                listName.add("0");
                break;
            }else{

                Calendar calendar = Calendar.getInstance();
                SimpleDateFormat sd=new SimpleDateFormat("YYYY-MM-dd-HH-mm-ss");
                String time0=sd.format(calendar.getTime());
                fileName= time0.toString()+"_"+f.getOriginalFilename();
                target=new File(savePath+"/"+fileName);
                f.transferTo(target);
                listName.add(fileName);
            }
        }
    }


    Map<String,Object> map=new HashMap<>();

    SimpleDateFormat sd=new SimpleDateFormat("YYYY-MM-dd  HH:mm:ss");
    ;System.out.println(sd.format(d.getTime()));
  map.put("created_at",sd.format(d.getTime()));
    map.put("updated_at",sd.format(d.getTime()));
  map.put("username",username);
  map.put("password",password);
  map.put("verify",0);
  map.put("email",email);
  int type=0;
  if(type1.equals("借买方")){
type=0;
  }else{
      type=1;
  }
  map.put("type1",type);
  map.put("money",0);
  map.put("status",0);
  map.put("brand",brand);
    if(listName.get(0)==""||"0".equals(listName.get(0)) ){
        map.put("head","暂无图片");
    }else{
        String picPath=savePath+listName.get(0);
        map.put("head",listName.get(0));
    }
    int i=l.register(map);
    System.out.println("执行了---------------------------");
    json.put("status",i);
    return json.toString();
}
    @RequestMapping("/register-YanZheng")
    @ResponseBody
    public String login_Yanzheng( User user){//验证码
        JSONObject json=new JSONObject();
        list.clear();
        for(int i=0;i<4;i++){
            Random r=new Random(10);
                int k =(int)(Math.random()*20);
                    list.add(k);
        }
     //   System.out.println(list);
        json.put("checkNumber",list);
        return json.toString();
    }
    @RequestMapping("/checkUserName")
    @ResponseBody
    public String checkUserName(User user){

        JSONObject json=new JSONObject();
       User userName1= l.checkUserName(user);
       boolean b=true;
       if(userName1==null){
            b=false;
       }else{
           b=true;
       }
        json.put("status",b);
        return json.toString();
    }
}
