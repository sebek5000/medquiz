
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs/Observable';

@Injectable()
export class QuestionService {

  constructor(private http: HttpClient) {
  }

  getAll(): Observable<any> {
    return this.http.get('http://localhost:8020/auth/questions/all');
  }

  getAnswersForQuestion(id): Observable<any> {
    return this.http.get('http://localhost:8020/auth/answers/' + id + '/question' );
  }

}
