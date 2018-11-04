/**
 * https://www.youtube.com/watch?v=Ke7Tr4RgRTs
 * 19:54
 * Angular:
 * https://developer.okta.com/blog/2017/12/04/basic-crud-angular-and-spring-boot
 * logowanie:
 * https://www.baeldung.com/spring-security-login-angular
 */
package com.medquiz;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.medquiz")
@EnableAutoConfiguration
public class Main {


  public static void main(String[] args) {
    SpringApplication.run(Main.class, args);
  }
}
