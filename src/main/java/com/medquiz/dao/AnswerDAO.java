package com.medquiz.dao;

import com.medquiz.entity.Answer;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.Map;

@Repository
public class AnswerDAO {
  private static Map<Integer, Answer> answers;


  public Collection<Answer> getAllAnswers() {
    return this.answers.values();
  }
}
