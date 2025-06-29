package com.WikiMedic.Backend.model;

import jakarta.persistence.*;
import java.util.Set;

@Entity
@Table(name = "sintomas")
public class sintomaModel {
    
@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Sintomas")
    private Integer id;

    @Column(name = "Sintomas", nullable = false, length = 100)
    private String nombre;

    @Column(name = "Descripcion")
    private String descripcion;

    @ManyToMany(mappedBy = "sintomas")
    private Set<medicinaModel> medicinas;

    // Getters y Setters

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Set<medicinaModel> getMedicinas() {
        return medicinas;
    }

    public void setMedicinas(Set<medicinaModel> medicinas) {
        this.medicinas = medicinas;
    }
}
