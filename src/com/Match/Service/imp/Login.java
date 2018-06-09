package com.Match.Service.imp;

import com.Match.Dao.UserDao;

import com.Match.Entity.User;
import com.Match.Service.LoginDao;

import com.Match.Util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class Login implements LoginDao {
    MD5Util md5Util= new MD5Util();
@Autowired
 private UserDao userMapper;
    @Override
    public User login(User user){
        user.setPassword(md5Util.toMD5(user.getPassword()));
        return userMapper.select(user);
    }

    @Override
    public User checkLogin(User user) {
        return userMapper.checkUserName(user);
    }

    public int register(Map<String,Object> map) {
        map.put("password", md5Util.toMD5(map.get("password").toString()));
        int i = 0;
        User user = new User();
        user.setUsername(map.get("username").toString());

        if (checkUserName(user) != null && !"".equals(checkUserName(user))) {
            i = -1;
        } else {
            i = userMapper.register(map);

        }
        return i;
    }
    @Override
    public User checkUserName(User user) {
        return userMapper.checkUserName(user);
    }
}
