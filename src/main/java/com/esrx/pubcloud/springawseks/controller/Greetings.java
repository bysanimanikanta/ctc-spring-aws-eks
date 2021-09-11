package com.esrx.pubcloud.springawseks.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/labday/")
public class Greetings {

    @RequestMapping("greet")
    public String greet() {
        return "Hey!! This is CTC Lab day...";
    }
}
