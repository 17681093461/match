package com.Match.Controller.Brand.Brand;

import com.Match.Entity.cart;
import com.Match.Service.CartBiz;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import sun.misc.Contended;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private CartBiz cartbiz;
    @RequestMapping(value = "/query" ,produces = "text/html;charset=utf-8")
    @ResponseBody
    public String queryGoods(HttpSession se, @RequestParam(value="name") String arg1,@RequestParam(value="state") String arg0) {
        JSONObject JSON = new JSONObject();
//        System.out.println(arg1+"11111");
//        if("".equals(arg1)){
//            arg1=null;
//            System.out.println(arg1+"\\\\\\");
//        }
//        System.out.println(arg0);
        List<cart> list = cartbiz.query(arg1,arg0,20,1);
//        se.removeAttribute("cart");
        se.setAttribute("cart", list);
        JSON.put("status", 1);
        return JSON.toString();
    }
    @RequestMapping(value = "/queryByName",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String queryByName(String name,HttpSession se){
        List<Map<String,Object>> list=cartbiz.queryByName( name);
        JSONObject json=new JSONObject();
        se.removeAttribute("cart");
        se.setAttribute("r",1);
        se.setAttribute("cart",list);
        json.put("status",1);
        return json.toString();
    }
    @RequestMapping(value = "/queryByState",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String queryByName(Integer State,HttpSession se){
        List<Map<String,Object>> list=cartbiz.queryByState(State);
        JSONObject json=new JSONObject();
        se.removeAttribute("cart");
        se.setAttribute("cart",list);
        json.put("status",1);
        return json.toString();
    }
    @RequestMapping(value = "/addGoods",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String addCart(@RequestParam("pic") List<MultipartFile > file, String name,String typeid, String company,String addtime,String price,String store,String status,String descr,String clicknum,String state , HttpServletRequest
            req) throws IOException {

        System.out.println(file.size());
            String savePath=req.getServletContext().getRealPath("\\static\\GoodPic");
        System.out.println(savePath);
            List<String> listName=new ArrayList<>();
            if(file!=null&&file.size()>0){
                String fileName="";
                File target=null;
                for(MultipartFile f:file){
                    if("".equals(f.getOriginalFilename())){
                        listName.add("0");
                        break;
                    }else{
                       Date d=new Date();
                        Calendar calendar = Calendar.getInstance();
                   SimpleDateFormat sd=new SimpleDateFormat("YYYY-MM-dd-HH-mm-ss");
                    String time=sd.format(calendar.getTime());
                    fileName= time.toString()+"_"+f.getOriginalFilename();
                    target=new File(savePath+"/"+fileName);
                    f.transferTo(target);
                    listName.add(fileName);
                }
                }
            }

            Date now = new Date();
        Map<String,Object> map=new HashMap<>();
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//可以方便地修改日期格式
            String addTime = dateFormat.format( now );
if(listName.get(0)==""||"0".equals(listName.get(0)) ){
    map.put("pic","暂无图片");
}else{
   String picPath=savePath+listName.get(0);
    map.put("pic",listName.get(0));
}

            map.put("name",name);
            map.put("typeid",typeid);
            map.put("company", company);
            map.put("price",price);
            map.put("store",store);
             map.put("status",status);
            map.put("descr",descr);
            map.put("clicknum",clicknum);
            map.put("state",state);
            map.put("addtime",addtime);
            int i=cartbiz.addCart(map);
            JSONObject json=new JSONObject();
            json.put("success",i);
            return json.toString();
        }
@RequestMapping( value = "/delG",produces = "text/html;charset=utf-8")
@ResponseBody
public String delGood(int id){
    int i=cartbiz.deleteGoods(id);
     JSONObject json=new JSONObject();
     json.put("status",i);
    System.out.println(json.toString());
        return json.toString();
    }
    @RequestMapping( value = "/UPG",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String updateCart(@RequestParam("pic") List<MultipartFile > file, int id ,String name,String typeid, String company,String addtime,String price,String store,String status,String descr,String clicknum,String state , HttpServletRequest
            req) throws IOException {
        System.out.println(name+"/"+price+"/"+status+"/"+"/"+company+"/"+store+"/"+descr+"/"+clicknum+"/"+typeid+state);
        String savePath=req.getServletContext().getRealPath("\\GoodPic");
        List<String> listName=new ArrayList<>();
        if(file!=null&&file.size()>0){
            String fileName="";
            File target=null;
            for(MultipartFile f:file){
                if("".equals(f.getOriginalFilename())){
                    listName.add("0");
                    break;
                }else{
                    fileName= UUID.randomUUID().toString()+"_"+f.getOriginalFilename();
                    target=new File(savePath+"/"+fileName);
                    f.transferTo(target);
                    listName.add(fileName);
                }
            }
        }


        Map<String,Object> map=new HashMap<>();
        if(listName.get(0)==""||"0".equals(listName.get(0)) ){
            map.put("pic","暂无图片");
        }else{
            String k=savePath+listName.get(0);
            map.put("pic",k);
        }
        map.put("name",name);
        map.put("id",id);
        map.put("typeid",typeid);
        map.put("company", company);
        map.put("price",price);
        map.put("store",store);
        map.put("status",status);
        map.put("descr",descr);
        map.put("clicknum",clicknum);
        map.put("state",state);
        map.put("addtime",addtime);
        int i=cartbiz.update(map);
        JSONObject json=new JSONObject();
        json.put("success",i);
        return json.toString();
    }
}
