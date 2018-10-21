package com.medquiz.repository;

import com.medquiz.entity.Question;
import org.springframework.data.repository.CrudRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin(origins = "http://localhost:4200")
public interface QuestionRepository extends CrudRepository<Question, Integer> {
}
