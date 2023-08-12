package com.gnswp21.dockerproject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class DemoController {
    @Value("${host}")
    String hostName;
    @GetMapping
    public String hello(){


        return "hello, " + hostName;
    }
}
