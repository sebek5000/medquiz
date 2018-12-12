
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs/Observable';

@Injectable()
export class QuestionService {

  constructor(private http: HttpClient) {
  }
  getAllChallenges(): Observable<any> {
    return this.http.get('http://10.182.19.63:8020/auth/challenges/all');
  }

  getAll(): Observable<any> {
    return this.http.get('http://10.182.19.63:8020/auth/questions/all');
  }

  getAnswersForQuestion(id): Observable<any> {
    return this.http.get('http://10.182.19.63:8020/auth/answers/' + id + '/question' );
  }

  getLoggedUserId(): any {
    return this.http.get('http://10.182.19.63:8020/auth/username/' + sessionStorage.getItem('user'));
  }
  getUserById(id): any{
    return this.http.get('http://10.182.19.63:8020/auth/' + id);
  }

  postNewChallenge(userId, sum) {
    this.http.post('http://10.182.19.63:8020/auth/challenges/add', {
    "userId": userId,
    "points": sum
    }).subscribe(
      res => {
        console.log(res);
      },
      err => {
        console.log("Error occured");
      }
    );
  }


}
