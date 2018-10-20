package com.medquiz.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.ArrayList;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Question {
  @Id
  @GeneratedValue(strategy= GenerationType.AUTO)
  private int id;
  private String text;
  //private String answer1;
  //private String answer2;
  //private String answer3;
  //private String answer4;
  //private ArrayList<Answer> answers;
  //private int correctAnswer;
}
