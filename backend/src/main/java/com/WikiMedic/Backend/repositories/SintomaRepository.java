package com.WikiMedic.Backend.repositories;

import com.WikiMedic.Backend.model.sintomaModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface SintomaRepository extends JpaRepository<sintomaModel, Integer> {
    Optional<sintomaModel> findByNombre(String nombre);
}
