package com.medquiz.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@NoArgsConstructor
@Getter
@Setter
@AllArgsConstructor
public class Answer {
  @Id
  @GeneratedValue(strategy= GenerationType.AUTO)
  private int id;

  private String text;

  private Integer questionId;
  private Boolean isCorrect;
}
