package com.WikiMedic.Backend.service;

import com.WikiMedic.Backend.model.medicinaModel;
import com.WikiMedic.Backend.model.sintomaModel;
import com.WikiMedic.Backend.repositories.MedicinaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MedicinaService {

    @Autowired
    private MedicinaRepository medicinaRepository;

    // CRUD básico

    public List<medicinaModel> findAll() {
        return medicinaRepository.findAll();
    }

    public Optional<medicinaModel> findById(Integer id) {
        return medicinaRepository.findById(id);
    }

    public medicinaModel save(medicinaModel medicina) {
        return medicinaRepository.save(medicina);
    }

    public void deleteById(Integer id) {
        medicinaRepository.deleteById(id);
    }

    // Especializaciones

    public List<medicinaModel> findByNombre(String nombre) {
        return medicinaRepository.findByNombreContainingIgnoreCase(nombre);
    }

    public List<medicinaModel> findBySintomasAll(List<sintomaModel> sintomas) {
        return medicinaRepository.findBySintomasAll(sintomas);
    }

    public List<medicinaModel> findBySintomasAny(List<sintomaModel> sintomas) {
        return medicinaRepository.findDistinctBySintomasIn(sintomas);
    }
}
