package com.Match.Dao;

import com.Match.Entity.cart;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

public interface CartDao {
    List<cart> query( String arg0 ,String arg1 );
    List<Map<String,Object>> queryByName(String name);
    List<Map<String,Object>> queryByState(Integer state);
    int addCart(Map<String,Object>  map);
    int deleteGoods (@RequestParam("id") int id);
    int update(Map<String,Object> map);



}
