package com.Match.Dao;


import com.Match.Entity.User;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;


public interface UserDao {
   User select(User user);
   int register(Map<String,Object> map);
  User checkUserName(User user);
}
