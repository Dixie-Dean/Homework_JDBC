package com.example.homework_jdbc.controller;

import com.example.homework_jdbc.repository.MyRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class AppController {

    private final MyRepository myRepository;

    public AppController(MyRepository myRepository) {
        this.myRepository = myRepository;
    }

    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam String name) {
        return myRepository.getProductName(name);
    }

}
