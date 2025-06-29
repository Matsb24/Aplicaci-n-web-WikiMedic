package com.WikiMedic.Backend.service;

import com.WikiMedic.Backend.model.sintomaModel;
import com.WikiMedic.Backend.repositories.SintomaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SintomaService {

    @Autowired
    private SintomaRepository sintomaRepository;

    // CRUD básico

    public List<sintomaModel> findAll() {
        return sintomaRepository.findAll();
    }

    public Optional<sintomaModel> findById(Integer id) {
        return sintomaRepository.findById(id);
    }

    public sintomaModel save(sintomaModel sintoma) {
        return sintomaRepository.save(sintoma);
    }

    public void deleteById(Integer id) {
        sintomaRepository.deleteById(id);
    }

    // Buscar por nombre
    public Optional<sintomaModel> findByNombre(String nombre) {
        return sintomaRepository.findByNombre(nombre);
    }
}
