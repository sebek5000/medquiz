package com.medquiz.repository;

import com.medquiz.entity.Answer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface AnswerRepository extends CrudRepository<Answer, Integer> {
//watch out for questionId not question_id!!!
  @Query("SELECT a FROM Answer a where a.questionId = :id")
   Iterable<Answer> findByQuestionId(@Param("id") Integer id);
}