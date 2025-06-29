package com.WikiMedic.Backend.controller;

import com.WikiMedic.Backend.model.sintomaModel;
import com.WikiMedic.Backend.service.SintomaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/sintomas")
public class SintomaController {

    @Autowired
    private SintomaService sintomaService;

    @GetMapping
    public List<sintomaModel> getAll() {
        return sintomaService.findAll();
    }

    @GetMapping("/{id}")
    public Optional<sintomaModel> getById(@PathVariable Integer id) {
        return sintomaService.findById(id);
    }

    @PostMapping
    public sintomaModel create(@RequestBody sintomaModel sintoma) {
        return sintomaService.save(sintoma);
    }

    @PutMapping("/{id}")
    public sintomaModel update(@PathVariable Integer id, @RequestBody sintomaModel sintoma) {
        sintoma.setId(id);
        return sintomaService.save(sintoma);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        sintomaService.deleteById(id);
    }
}
