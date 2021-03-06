import { QuestionService } from '../shared/question/question.service';
import { Component } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { OnInit } from '@angular/core';

@Component({
  selector: 'app-question-list',
  templateUrl: './question-list.component.html',
  styleUrls: ['./question-list.component.css']
})
export class QuestionListComponent implements OnInit {

  questions: Array<any>;
  suma: number;
  constructor(private questionService: QuestionService,
    private route: ActivatedRoute,
        private router: Router) { }

  ngOnInit() {
    this.suma = 0;
    let questionServiceInLoop = this.questionService;
    this.questionService.getAll().subscribe(data => {
      this.questions = data;
      this.questions.forEach(function (value) {
        questionServiceInLoop.getAnswersForQuestion(value.id).subscribe(data =>{
       value.answers = data;
       value.points = -1;
       console.log(data);
      });
      });
      console.log(this.questions);
    });
}

checkAnswer(isCorrect, questionId) {
   if (this.questions[questionId-1].points === -1 ) {
    this.questions[questionId-1].points = isCorrect;
    if (isCorrect) {
  event.srcElement.classList.replace('btn-default','btn-change');
      this.suma = this.suma + 1;
  } else {
  event.srcElement.classList.replace('btn-default','btn-wrong');
  }}
  console.log(this.questions[questionId].points);
  console.log(this.suma);
}


endQuiz() {

  this.questionService.getLoggedUserId().subscribe(data =>{
 
    this.questionService.postNewChallenge(data.id, this.suma);
  });
  location.reload();
  ( this.router.navigate(['']));

 
}



}

// let x = document.getElementsByClassName('mat-list-item-content');

// for(let line in x)
// {
//   x[line].setAttribute("style","display: inline-flex");
// }
// to powinnod dzialac, dziala w konsoli, ale jeszcze nie tu :)

