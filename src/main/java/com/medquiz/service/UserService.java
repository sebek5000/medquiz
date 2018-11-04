package com.medquiz.service;

import com.medquiz.dao.UserDAO;
import com.medquiz.entity.User;
import com.medquiz.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class UserService {

  @Autowired
  private UserDAO userDAO;

  public Collection<User> getAllQuestions(){
    return this.userDAO.getAllUsers();
  }
 /* @Autowired
  private UserRepository repo;

  @Autowired
  private PasswordEncoder passwordEncoder;

  public void save(User user){
    user.setPassword(passwordEncoder.encode(user.getPassword()));
    repo.save(user);
  }*/

}