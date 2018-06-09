package com.Match.Service;


import com.Match.Entity.User;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;


public interface LoginDao {
 public abstract User login(User user);
 public abstract User checkLogin(User user);
 public abstract int register(Map<String,Object> map);
public abstract User checkUserName(User user);
}
