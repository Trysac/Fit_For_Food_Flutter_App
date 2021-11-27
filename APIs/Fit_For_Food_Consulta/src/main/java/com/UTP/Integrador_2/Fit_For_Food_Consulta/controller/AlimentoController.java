package com.UTP.Integrador_2.Fit_For_Food_Consulta.controller;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.AlimentoBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.services.AlimentoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class AlimentoController {

    @Autowired
    AlimentoService alimentoService;

    @GetMapping("/alimentos")
    public List<AlimentoBean> getAll() {
        List<AlimentoBean> alimentosList = alimentoService.getListaAlimentosTodos();
        return alimentosList;
    }

    @GetMapping("/alimentos/filter/{tipoAlimento}")
    public List<AlimentoBean> getAlimentosByType(@PathVariable String tipoAlimento) {
        List<AlimentoBean> alimentosList = alimentoService.getListaAlimentosByType(tipoAlimento);
        return alimentosList;
    }

    @GetMapping("/alimentos/filter/{objetivo}")
    public List<AlimentoBean> getAlimentosByObjective(@PathVariable String objetivo) {
        List<AlimentoBean> alimentosList = alimentoService.getListaAlimentosPorObjectivo(objetivo);
        return alimentosList;
    }
}
