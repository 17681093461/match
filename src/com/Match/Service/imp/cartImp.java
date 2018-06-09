package com.Match.Service.imp;

import com.Match.Dao.CartDao;
import com.Match.Entity.cart;
import com.Match.Service.CartBiz;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;
import java.util.Map;
@Service("cartBiz")
@Transactional
public class cartImp implements CartBiz {
    @Autowired
    private CartDao cartdao;
    @Override
    public List<cart> query(String name,String state,int epage, int pagesize) {
        PageHelper.startPage(epage, pagesize,"f");
        return cartdao.query(name,state);
    }

    @Override
    public List<Map<String, Object>> queryByName(String name) {
        return cartdao.queryByName(name);
    }

    @Override
    public List<Map<String, Object>> queryByState(Integer state) {
        return cartdao.queryByState(state);
    }

    @Override
    public int addCart(Map<String,Object> map) {
        return cartdao.addCart(map);
    }

    @Override
    public int deleteGoods(int id) {
        return cartdao.deleteGoods(id);
    }

    @Override
    public int update(Map<String,Object>map) {
        return cartdao.update(map);
    }
//    public List<cart> getListCheckBySemester(String name,String state,int epage, int pagesize) {//分页
//        // TODO Auto-generated method stub
//        PageHelper.startPage(epage, pagesize,"id DESC");
//        return cartdao.query(name,state);
//    }
}
