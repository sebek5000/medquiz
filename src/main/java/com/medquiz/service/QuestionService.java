package com.medquiz.service;

import com.medquiz.dao.QuestionDAO;
import com.medquiz.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class QuestionService {

  @Autowired
  private QuestionDAO questionDAO;

  public Collection<Question> getAllQuestions(){
    return this.questionDAO.getAllQuestions();
  }
}
