package com.medquiz.repository;

import java.util.Optional;

import com.medquiz.entity.Question;
import com.medquiz.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

/**
 * User repository for CRUD operations.
 */
@Repository
@CrossOrigin
public interface UserRepository extends CrudRepository<User, Integer>{//, UserRepositoryCustom {

  //User is name of the class NOT table
  @Query("select u from User u where u.username = :username")
  User findByUsername(@Param("username") String username);

  //@Query(value ="insert into User (username, password) values (:user.username, :user.password)", nativeQuery = true)
  //void addUser(@Param("user") User user);
}

