package com.flz.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

//http://localhost:8080
@RestController
@RequestMapping
public class DevOpsController {

    @GetMapping
    public String devopshi(){
        return "DevOps Hi !!";
    }

    @GetMapping("/info")
    public String devopsInfo(){
        return "DevOps Hello Info icerir";
    }
}
