package com.UTP.Integrador_2.Fit_For_Food_Consulta.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "ejercicio")
@Getter
@Setter
public class EjercicioModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Registro", unique = true, nullable = false)
    private int id;

    @Column(name = "ID_Usuario", unique = true, nullable = false)
    private int idUsuario;

    @Column(name = "Num_Dias_Semana_Proyectados")
    private byte numeroDiasSemanaProyectados;

    @Column(name = "Prom_Ejercicio_Semana")
    private float promedioSemanalDiasEjercicio;

    @Column(name = "Fecha_PrimerRegistro")
    private Date primerRegistroEjercicio;

    @Column(name = "Registro_Ejercicio")
    private String registrosEjercicio;

}
