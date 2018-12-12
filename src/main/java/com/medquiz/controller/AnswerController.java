package com.medquiz.controller;

import com.medquiz.entity.Answer;
import com.medquiz.repository.AnswerRepository;
import com.medquiz.service.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Optional;
@CrossOrigin
@RestController
@RequestMapping("/answers")
public class AnswerController {


    @Autowired
    private AnswerService answerService;
    @Autowired
    private AnswerRepository answerRepository;

  @RequestMapping(method = RequestMethod.GET)
  public Collection<Answer> getAllAnswers(){
    return this.answerService.getAllAnswer();
  }


  @GetMapping(path="/all")
  public @ResponseBody
  Iterable<Answer> getAllAnswers2() {
    return answerRepository.findAll();
  }


  @GetMapping(path="/{id}")
  public @ResponseBody
  Optional<Answer> getAnswerByID(@PathVariable("id") Integer id) {
    return answerRepository.findById(id);
  }


  @GetMapping(path="/{id}/question")
  public @ResponseBody Iterable<Answer> getAllAnswersForQuestion (@PathVariable("id") Integer id){
    return answerRepository.findByQuestionId(id);
  }

}
