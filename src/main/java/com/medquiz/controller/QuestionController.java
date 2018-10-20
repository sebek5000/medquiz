package com.medquiz.controller;

import com.medquiz.entity.Question;
import com.medquiz.repository.QuestionRepository;
import com.medquiz.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@RestController
@RequestMapping("/questions")
public class QuestionController {
  @Autowired
  private QuestionService questionService;
  @Autowired
  private QuestionRepository questionRepository;


  @RequestMapping(method = RequestMethod.GET)
  public Collection<Question> getAllQuestions(){
    return this.questionService.getAllQuestions();
  }

  @GetMapping(path="/all")
  public @ResponseBody Iterable<Question> getAllQuestions2() {
    // This returns a JSON or XML with the users
    return questionRepository.findAll();
  }
}
