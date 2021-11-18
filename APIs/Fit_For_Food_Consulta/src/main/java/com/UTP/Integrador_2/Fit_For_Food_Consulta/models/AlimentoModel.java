package com.UTP.Integrador_2.Fit_For_Food_Consulta.models;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.constantes.GradoRecomendacion;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.constantes.TipoAlimento;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity(name = "alimento")
@Table(name = "alimento")
@Getter
@Setter
public class AlimentoModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID", unique = true, nullable = false)
    private int id;

    @Column(name = "Nombre", unique = true, nullable = false)
    private String nombre;

    @Column(name = "Tipo", nullable = false)
    private String tipo;

    @Column(name = "Calorias", nullable = false)
    private float calorias;

    @Column(name = "Objetivo_Cal_Relacionado", nullable = false)
    private String objetivoRelacionado;

    @Column(name = "Grado_Recomendacion", nullable = false)
    private byte gradoRecomendacion;


    public void setGradoRecomendacion(GradoRecomendacion gradoRecomendacion) {
        switch (gradoRecomendacion) {
            case noRecomendado:
                this.gradoRecomendacion = 0;
                break;
            case bajo:
                this.gradoRecomendacion = 1;
                break;
            case moderado:
                this.gradoRecomendacion = 2;
                break;
            case alto:
                this.gradoRecomendacion = 3;
                break;
            default:
                this.gradoRecomendacion = -1;
        }
    }

    public void setTipo(TipoAlimento tipo) {
        switch (tipo) {
            case fruta:
                this.tipo = "fruta";
                break;
            case harina:
                this.tipo = "harina";
                break;
            case verdura:
                this.tipo = "verdura";
                break;
            case snack:
                this.tipo = "snack";
                break;
            default:
                this.tipo = "NO_DEFINIDO";
        }
    }
}
