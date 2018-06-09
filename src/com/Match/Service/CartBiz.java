package com.Match.Service;

import com.Match.Entity.cart;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

public interface CartBiz {
    public abstract List<cart> query(String name ,String state,int page,int k);
    public abstract List<Map<String,Object>> queryByName(String name);
    public abstract List<Map<String,Object>> queryByState(Integer state);
    public abstract int addCart(Map<String,Object> map);
    public abstract int deleteGoods ( int id);
    public abstract int update(Map<String,Object> map);
}
