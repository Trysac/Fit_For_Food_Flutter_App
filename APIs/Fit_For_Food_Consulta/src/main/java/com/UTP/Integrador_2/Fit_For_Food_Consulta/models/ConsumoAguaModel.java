package com.UTP.Integrador_2.Fit_For_Food_Consulta.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity(name = "consumo_agua")
@Table(name = "consumo_agua")
@Getter
@Setter
public class ConsumoAguaModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Registro", unique = true, nullable = false)
    private int id;

    @Column(name = "ID_Usuario", unique = true, nullable = false)
    private int idUsuario;

    @Column(name = "Consumo_Diario")
    private float consumoDiario;

    @Column(name = "Prom_Consumo")
    private float PromedioconsumoDiario;

    @Column(name = "Registro_Consumo")
    private String registrosConsumoAgua;

    @Column(name = "Fecha_PrimerRegistro")
    private Date fechaPrimerRegistro;

}
