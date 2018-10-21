import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {QuestionService} from './shared/question/question.service'; 

import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { QuestionListComponent } from './question-list/question-list.component';

import { MatButtonModule, MatCardModule, MatInputModule, MatListModule, MatToolbarModule } from '@angular/material';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

@NgModule({
  declarations: [
    AppComponent,
    QuestionListComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
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

