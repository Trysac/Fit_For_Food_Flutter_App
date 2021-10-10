package com.UTP.Integrador_2.Fit_For_Food_Login.models;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.constantes.GradoRecomendacion;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.constantes.TipoAlimento;

import javax.persistence.*;

@Entity
@Table(name = "alimento")
public class AlimentoModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private int id;

    @Column(unique = true, nullable = false)
    private String nombre;

    @Column(nullable = false)
    private String tipo;

    @Column(nullable = false)
    private float calorias;

    @Column(nullable = false)
    private String objetivoRelacionado;

    @Column(nullable = false)
    private byte gradoRecomendacion;



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public float getCalorias() {
        return calorias;
    }

    public void setCalorias(float calorias) {
        this.calorias = calorias;
    }

    public String getObjetivoRelacionado() {
        return objetivoRelacionado;
    }

    public void setObjetivoRelacionado(String objetivoRelacionado) {
        this.objetivoRelacionado = objetivoRelacionado;
    }

    public byte getGradoRecomendacion() {
        return gradoRecomendacion;
    }

    public void setGradoRecomendacion(GradoRecomendacion gradoRecomendacion) {
        switch (gradoRecomendacion){
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

    public String getTipo() {
        return tipo;
    }

    public void setTipo(TipoAlimento tipo) {
        switch (tipo){
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
