import { Component, OnInit } from '@angular/core';
import { Http, Headers, RequestOptions } from '@angular/http';
import 'rxjs/add/operator/map'

@Component({
    selector:'home',
    templateUrl: './home.component.html'
})

export class HomeComponent implements OnInit {

    userName: string;

    constructor(private http: Http) { }

    ngOnInit() {
        //let url = 'http://localhost:8082/auth/user';
        //let url = 'http://192.168.0.17:8082/auth/user';
        let url = 'http://10.182.240.160:8082/auth/user';//eduroam
           let headers:Headers = new Headers({
                'Authorization': 'Basic ' + sessionStorage.getItem('token')
            })
        let options = new RequestOptions({headers: headers});
        this.http.post(url,{}, options).map(
            res => res.json(),
            error => {
                if(error.status == 401)
                    alert('Unauthorized');
            }
        ).subscribe(principal => {
            this.userName = principal.name;
        });
    }

    logout() {
        sessionStorage.setItem('token', '');
    }
}