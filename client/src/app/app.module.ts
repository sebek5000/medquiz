import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {QuestionService} from './shared/question/question.service'; 

import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { QuestionListComponent } from './question-list/question-list.component';
import {LoginComponent} from './login/login.component';
import {HttpModule} from '@angular/http';
import {routing} from './app.routing';
import {FormsModule} from '@angular/forms';
import { HomeComponent } from './home/home.component';

import { MatButtonModule, MatCardModule, MatInputModule, MatListModule, MatToolbarModule } from '@angular/material';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

@NgModule({
  declarations: [
    AppComponent,
    QuestionListComponent,
    HomeComponent,
    LoginComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    FormsModule,
    HttpModule,
    routing,
    BrowserAnimationsModule,
    MatButtonModule,
    MatCardModule,
    MatInputModule,
    MatListModule,
    MatToolbarModule
  ],
  providers: [QuestionService],
  bootstrap: [AppComponent]
})
export class AppModule { }

