package com.UTP.Integrador_2.Fit_For_Food_Consulta.controller;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.CaloriasBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.services.CaloriasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

public class CaloriasController {

    @Autowired
    CaloriasService caloriasService;

    @GetMapping("/calorias/{userID}")
    public CaloriasBean getRegisterByUserID(@PathVariable int userID) {
        CaloriasBean bean = this.caloriasService.getByUserID(userID);
        return bean;
    }

}
