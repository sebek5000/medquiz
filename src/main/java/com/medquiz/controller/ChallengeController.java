package com.medquiz.controller;

import com.medquiz.entity.Challenge;
import com.medquiz.repository.ChallengeRepository;
import com.medquiz.service.ChallengeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/challenges")
public class ChallengeController {

  @Autowired
  private ChallengeService challengeService;
  @Autowired
  private ChallengeRepository challengeRepository;

  @GetMapping(path="/all")
  public @ResponseBody
  Iterable<Challenge> getAllChallenges() {
    return challengeRepository.findAll();
  }

  @GetMapping(path="/{id}")
  public @ResponseBody
  Optional<Challenge> getChallengeByID(@PathVariable("id") Integer id) {
    return challengeRepository.findById(id);
  }

  @PostMapping(path="/add", consumes = "application/json", produces = "application/json")
  public void createNewChallenge(@RequestBody Challenge challenge){
  challengeRepository.save(challenge);
  }
}
