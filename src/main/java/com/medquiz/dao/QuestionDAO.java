package com.medquiz.dao;

import com.medquiz.entity.Question;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@Repository
public class QuestionDAO {

  private static Map<Integer, Question> questions;


  public Collection<Question> getAllQuestions() {
    return this.questions.values();
  }

}
