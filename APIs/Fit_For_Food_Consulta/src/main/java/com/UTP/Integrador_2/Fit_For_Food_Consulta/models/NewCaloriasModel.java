package com.UTP.Integrador_2.Fit_For_Food_Consulta.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "Registros_Calorias")
@Getter
@Setter
public class NewCaloriasModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Registro", unique = true, nullable = false)
    private int id;

    @Column(name = "ID_Usuario", unique = true, nullable = false)
    private int idUsuario;

    @Column(name = "Cal_calorias", nullable = false)
    private float calorias;

    @Column(name = "Cal_dia", nullable = false)
    private int dia;

    @Column(name = "Cal_mes", nullable = false)
    private int mes;

    @Column(name = "Cal_año", nullable = false)
    private int año;

    @Column(name = "Cal_medida", nullable = false)
    private int medida;

    @Column(name = "Cal_nombre", nullable = false)
    private String nombre;

    @Column(name = "Cal_tipo")
    private String tipo;

    @Column(name = "Cal_imagenURL")
    private String imagenURL;

}
