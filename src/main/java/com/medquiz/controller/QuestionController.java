package com.medquiz.controller;

import com.medquiz.entity.Question;
import com.medquiz.repository.QuestionRepository;
import com.medquiz.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Optional;

@RestController
@RequestMapping("/questions")
@CrossOrigin(origins = "http://10.182.19.63:4200")
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

  @GetMapping(path="/{id}")
  public @ResponseBody
  Optional<Question> getQuestionByID(@PathVariable("id") Integer id) {
    // This returns a JSON or XML with the users
    return questionRepository.findById(id);
  }
}
