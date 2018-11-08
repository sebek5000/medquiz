import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Http } from '@angular/http';

@Component({
    selector: 'login',
    templateUrl: './login.component.html'
})

export class LoginComponent implements OnInit {
    model: any = {};

    constructor(
        private route: ActivatedRoute,
        private router: Router,
        private http: Http) { }

    ngOnInit() {
        sessionStorage.setItem('token', '');
    }


    login() {
        let url = 'http://localhost:8082/auth/login';
        let result = this.http.post(url, {
            username: this.model.username,
            password: this.model.password
        }).map(res => res.json()).subscribe(isValid => {
            
            if (isValid) {
                sessionStorage.setItem('token', btoa(this.model.username + ':' + this.model.password));
                this.router.navigate(['']);
            } else {
                alert("Authentication failed.")
            }
        });
    }

    register() {
        let url = 'http://localhost:8082/auth/register';
        let result = this.http.post(url, {
            username: this.model.username,
            password: this.model.password
        }).map(res => res.json()).subscribe(isValid => {
            
            if (isValid) {
                sessionStorage.setItem('token', btoa(this.model.username + ':' + this.model.password));
                this.router.navigate(['']);
            } else {
                alert("Authentication failed.")
            }
        });
    }


}