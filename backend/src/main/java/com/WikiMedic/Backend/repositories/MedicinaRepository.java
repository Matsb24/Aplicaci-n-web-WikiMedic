package com.WikiMedic.Backend.repositories;

import com.WikiMedic.Backend.model.medicinaModel;
import com.WikiMedic.Backend.model.sintomaModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface MedicinaRepository extends JpaRepository<medicinaModel, Integer> {
    // Buscar medicinas por nombre (parcial, case-insensitive)
    List<medicinaModel> findByNombreContainingIgnoreCase(String nombre);

    // Buscar medicinas que tengan TODOS los síntomas seleccionados
    @Query("SELECT m FROM medicinaModel m JOIN m.sintomas s WHERE s IN :sintomas GROUP BY m HAVING COUNT(s) = :#{#sintomas.size}")
    List<medicinaModel> findBySintomasAll(List<sintomaModel> sintomas);

    // Buscar medicinas que tengan AL MENOS UNO de los síntomas seleccionados
    List<medicinaModel> findDistinctBySintomasIn(List<sintomaModel> sintomas);
}
