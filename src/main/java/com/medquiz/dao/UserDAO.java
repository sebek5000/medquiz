package com.medquiz.dao;

import com.medquiz.entity.User;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.Map;

@Repository
public class UserDAO {
  private static Map<Integer, User> users;


  public Collection<User> getAllUsers() {
    return this.users.values();
  }
}
