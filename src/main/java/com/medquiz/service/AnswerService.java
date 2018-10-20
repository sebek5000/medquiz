package com.medquiz.service;

import com.medquiz.dao.AnswerDAO;
import com.medquiz.entity.Answer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class AnswerService {
  @Autowired
  private AnswerDAO answerDAO;

  public Collection<Answer> getAllAnswer(){
    return this.answerDAO.getAllAnswers();
  }
}

