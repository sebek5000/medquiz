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
        //let url = 'http://localhost:8082/auth/login';
        //let url = 'http://192.168.0.17:8082/auth/login';
        let url = 'http://10.182.240.160:8082/auth/login';//eduroam
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
        //let url = 'http://localhost:8082/auth/register';
        //let url = 'http://192.168.0.17:8082/auth/register';
        let url = 'http://10.182.240.160:8082/auth/register';//eduroam
        let result = this.http.post(url, {
            username: this.model.username,
            password: this.model.password
        }).map(res => res.json()).subscribe(isValid => {
            
           
        });
    }


}