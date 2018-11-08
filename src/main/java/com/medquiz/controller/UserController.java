package com.medquiz.controller;

import com.medquiz.entity.User;
import com.medquiz.repository.UserRepository;
import com.medquiz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.Base64;
import java.util.Optional;

@RestController
@CrossOrigin
public class UserController {

  @Autowired
  private UserService userService;
  @Autowired
  private UserRepository userRepository;

    @RequestMapping("/login")
  public boolean login(@RequestBody User user) {
    User userInDatabase = userRepository.findByUsername(user.getUsername());
    return user.getPassword().equals(userInDatabase.getPassword());
  }
  @RequestMapping("/register")
  public void register(@RequestBody User user) {
    userRepository.save(user);
  }
  @RequestMapping("/user")
  public Principal user(HttpServletRequest request) {
    String authToken = request.getHeader("Authorization").substring("Basic".length()).trim();
    return () -> new String(Base64.getDecoder().decode(authToken)).split(":")[0];
  }


  @GetMapping(path="/all")
  public @ResponseBody Iterable<User> getAllUsers() {
    // This returns a JSON or XML with the users
    return userRepository.findAll();
  }

  @GetMapping(path="/{id}")
  public @ResponseBody
  Optional<User> getUserByID(@PathVariable("id") Integer id) {
    // This returns a JSON or XML with the users
    return userRepository.findById(id);
  }

  @GetMapping(path="/username/{username}")
  public @ResponseBody
  Optional<User> getUserByUsername(@PathVariable("username") String username) {
    // This returns a JSON or XML with the users
    //
    return Optional.of(userRepository.findByUsername(username));
  }

}
