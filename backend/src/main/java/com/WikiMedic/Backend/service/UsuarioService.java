package com.WikiMedic.Backend.service;

import com.WikiMedic.Backend.model.usuarioModel;
import com.WikiMedic.Backend.repositories.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UsuarioService {

    @Autowired
    private UsuarioRepository usuarioRepository;

    // CRUD básico

    public List<usuarioModel> findAll() {
        return usuarioRepository.findAll();
    }

    public Optional<usuarioModel> findById(Integer id) {
        return usuarioRepository.findById(id);
    }

    public usuarioModel save(usuarioModel usuario) {
        return usuarioRepository.save(usuario);
    }

    public void deleteById(Integer id) {
        usuarioRepository.deleteById(id);
    }

    // Buscar por correo (para login)
    public Optional<usuarioModel> findByCorreo(String correo) {
        return usuarioRepository.findByCorreo(correo);
    }
}
