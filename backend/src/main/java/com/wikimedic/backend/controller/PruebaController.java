package com.wikimedic.backend.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:3000") // permite que React consuma la API
public class PruebaController {

    @GetMapping("/prueba")
    public String saludar() {
        return "¡Conexión exitosa con Spring Boot!";
    }
}