package com.UTP.Integrador_2.Fit_For_Food_Login.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class NoPathController {

    @GetMapping("/")
    public String getNoPathResponse() {
        return "No service specified";
    }
}
