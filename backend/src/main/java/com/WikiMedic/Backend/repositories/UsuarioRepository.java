package com.WikiMedic.Backend.repositories;

import com.WikiMedic.Backend.model.usuarioModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UsuarioRepository extends JpaRepository<usuarioModel, Integer> {
    Optional<usuarioModel> findByCorreo(String correo);
}
