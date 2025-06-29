package com.WikiMedic.Backend.controller;

import com.WikiMedic.Backend.model.usuarioModel;
import com.WikiMedic.Backend.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/usuarios")
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;

    @GetMapping
    public List<usuarioModel> getAll() {
        return usuarioService.findAll();
    }

    @GetMapping("/{id}")
    public Optional<usuarioModel> getById(@PathVariable Integer id) {
        return usuarioService.findById(id);
    }

    @PostMapping
    public usuarioModel create(@RequestBody usuarioModel usuario) {
        return usuarioService.save(usuario);
    }

    @PutMapping("/{id}")
    public usuarioModel update(@PathVariable Integer id, @RequestBody usuarioModel usuario) {
        usuario.setId(id);
        return usuarioService.save(usuario);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        usuarioService.deleteById(id);
    }

    // Endpoint para login (búsqueda por correo, puedes expandir luego para validar contraseña)
    @GetMapping("/buscar")
    public Optional<usuarioModel> findByCorreo(@RequestParam String correo) {
        return usuarioService.findByCorreo(correo);
    }
}
