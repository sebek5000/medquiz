import { Component, OnInit } from '@angular/core';
import { QuestionService } from '../shared/question/question.service';
import { Http, Headers, RequestOptions } from '@angular/http';
import { Router, ActivatedRoute } from '@angular/router';
import {Sort} from '@angular/material';
import 'rxjs/add/operator/map';

@Component({
    selector:'home',
    templateUrl: './home.component.html'
})

export class HomeComponent implements OnInit {

    userName: string;
    challenges: Array<any>;
    sortedData: Array<any>;
    constructor(
        private questionService: QuestionService,
        private http: Http,
        private route: ActivatedRoute,
        private router: Router) { }

    ngOnInit() {
        
        let url = 'http://localhost:8020/auth/user';
        //let url = 'http://192.168.0.17:8020/auth/user';
        //let url = 'http://10.182.240.160:8020/auth/user';//eduroam
           let headers:Headers = new Headers({
                'Authorization': 'Basic ' + sessionStorage.getItem('token')
                })
                if(sessionStorage.getItem('token') === ''){
                  
                    this.router.navigate(['login']);
                }
                let options = new RequestOptions({headers: headers});
        this.http.post(url,{}, options).map(
            res => res.json(),
            error => {
                if(error.status == 401)
                    alert('Unauthorized');
            }
        ).subscribe(principal => {
            this.userName = principal.name;
            console.log("username: "+ this.userName);
        });
        this.readChallenges();
        this.readChallenges();
    }

    sortData(sort: Sort) {
        const data = this.challenges;
        if (!sort.active || sort.direction === '') {
          this.sortedData = data;
          return;
        }
        this.sortedData = data.sort((a, b) => {
            const isAsc = sort.direction === 'asc';
            switch (sort.active) {
              case 'username': return compare(a.username, b.username, isAsc);
              case 'points': return compare(a.points, b.points, isAsc);
              default: return 0;
            }
          });
    }

    logout() {
        sessionStorage.setItem('token', '');
    }
    startQuiz() {
        this.router.navigate(['question-list']);
    }

    readChallenges() {
        let questionServiceInLoop = this.questionService;
        this.questionService.getAllChallenges().subscribe(data => {
            console.log("data:");
            console.log(data);
               this.challenges = data;
               this.challenges.forEach(function (value) {
                   console.log(value);
                   questionServiceInLoop.getUserById(value.userId).subscribe(data2 => {
                   value.username  = data2.username;
                   });
               });
        });
        
      }
}
function compare(a: number | string, b: number | string, isAsc: boolean) {
    return (a < b ? -1 : 1) * (isAsc ? 1 : -1);
  }

