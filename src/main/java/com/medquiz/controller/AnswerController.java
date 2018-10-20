package com.medquiz.controller;

import com.medquiz.entity.Answer;
import com.medquiz.repository.AnswerRepository;
import com.medquiz.service.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Optional;

@RestController
@RequestMapping("/answers")
public class AnswerController {


    @Autowired
    private AnswerService answerService;
    @Autowired
    private AnswerRepository answerRepository;

  @RequestMapping(method = RequestMethod.GET)
  public Collection<Answer> getAllQuestions(){
    return this.answerService.getAllAnswer();
  }

  @GetMapping(path="/all")
  public @ResponseBody
  Iterable<Answer> getAllAnswers2() {
    // This returns a JSON or XML with the users
    return answerRepository.findAll();
  }

  @GetMapping(path="/{id}")
  public @ResponseBody
  Optional<Answer> getAnswerByID(@PathVariable("id") Integer id) {
    // This returns a JSON or XML with the users
    return answerRepository.findById(id);
  }

}
