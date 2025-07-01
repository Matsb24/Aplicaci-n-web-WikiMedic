package com.WikiMedic.Backend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class VistaController {


    //moverse a buscar afecciones
    @GetMapping("/buscar-afecciones")
    public String buscarAfecciones() {
        return "BuscarAfecciones"; //colocar nombre del html, sin html. ejemplo BuscarAfecciones.html -> BuscarAfecciones
    }

     //moverse a buscar medicamentos por nombre
    @GetMapping("/buscar-medicinas")
    public String buscarMedicinas() {
        return "BuscarNombre"; //colocar nombre del html, sin html. ejemplo BuscarMedicinas.html -> BuscarMedicinas
    }

}
