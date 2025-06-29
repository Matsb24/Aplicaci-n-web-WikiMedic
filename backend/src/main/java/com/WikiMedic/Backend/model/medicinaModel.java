package com.WikiMedic.Backend.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.Set;

@Entity
@Table(name = "medicina")
public class medicinaModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Medicina")
    private Integer id;

    @Column(name = "Nombre_Medicina", nullable = false, length = 100)
    private String nombre;

    @Column(name = "Receta", nullable = false)
    private Boolean receta;

    @Column(name = "Descripcion")
    private String descripcion;

    @Column(name = "Componentes", nullable = false, length = 350)
    private String componentes;

    @Column(name = "Advertencias", nullable = false, length = 350)
    private String advertencias;

    @Column(name = "Consecuencias", nullable = false, length = 350)
    private String consecuencias;

    @Column(name = "Fecha_Registro")
    private LocalDateTime fechaRegistro;

    @ManyToMany
    @JoinTable(
        name = "medicina_sintoma",
        joinColumns = @JoinColumn(name = "ID_Medicina"),
        inverseJoinColumns = @JoinColumn(name = "ID_Sintomas")
    )
    private Set<sintomaModel> sintomas;

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

    public Boolean getReceta() {
        return receta;
    }

    public void setReceta(Boolean receta) {
        this.receta = receta;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getComponentes() {
        return componentes;
    }

    public void setComponentes(String componentes) {
        this.componentes = componentes;
    }

    public String getAdvertencias() {
        return advertencias;
    }

    public void setAdvertencias(String advertencias) {
        this.advertencias = advertencias;
    }

    public String getConsecuencias() {
        return consecuencias;
    }

    public void setConsecuencias(String consecuencias) {
        this.consecuencias = consecuencias;
    }

    public LocalDateTime getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(LocalDateTime fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public Set<sintomaModel> getSintomas() {
        return sintomas;
    }

    public void setSintomas(Set<sintomaModel> sintomas) {
        this.sintomas = sintomas;
    }
}



