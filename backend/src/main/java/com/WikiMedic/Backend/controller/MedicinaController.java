package com.WikiMedic.Backend.controller;

import com.WikiMedic.Backend.model.medicinaModel;
import com.WikiMedic.Backend.model.sintomaModel;
import com.WikiMedic.Backend.service.MedicinaService;
import com.WikiMedic.Backend.service.SintomaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/medicinas")
public class MedicinaController {

    @Autowired
    private MedicinaService medicinaService;

    @Autowired
    private SintomaService sintomaService;

    // Listar todas las medicinas
    @GetMapping
    public List<medicinaModel> getAll() {
        return medicinaService.findAll();
    }

    // Buscar medicina por ID
    @GetMapping("/{id}")
    public Optional<medicinaModel> getById(@PathVariable Integer id) {
        return medicinaService.findById(id);
    }

    // Crear nueva medicina
    @PostMapping
    public medicinaModel create(@RequestBody medicinaModel medicina) {
        return medicinaService.save(medicina);
    }

    // Actualizar medicina
    @PutMapping("/{id}")
    public medicinaModel update(@PathVariable Integer id, @RequestBody medicinaModel medicina) {
        medicina.setId(id);
        return medicinaService.save(medicina);
    }

    // Eliminar medicina
    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        medicinaService.deleteById(id);
    }

    // Buscar por nombre (para el buscador)
    @GetMapping("/buscar")
    public List<medicinaModel> searchByNombre(@RequestParam String nombre) {
        return medicinaService.findByNombre(nombre);
    }

    // Buscar por síntomas (por IDs de síntomas seleccionados en formulario)
    @PostMapping("/buscar/sintomas")
    public List<medicinaModel> searchBySintomas(@RequestBody List<Integer> sintomasIds) {
        List<sintomaModel> sintomas = sintomasIds.stream()
            .map(id -> sintomaService.findById(id).orElse(null))
            .filter(s -> s != null)
            .toList();

        return medicinaService.findBySintomasAll(sintomas);
    }
}
