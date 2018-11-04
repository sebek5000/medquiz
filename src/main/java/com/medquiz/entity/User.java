package com.medquiz.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.UniqueElements;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
@Table( name = "user" )
@NoArgsConstructor
@AllArgsConstructor
public class User {
  @javax.persistence.Id
  @GeneratedValue(strategy = javax.persistence.GenerationType.IDENTITY )
  @Column
  private int id;
  @Column
  private String username;
  @Column
  private String password;


}
