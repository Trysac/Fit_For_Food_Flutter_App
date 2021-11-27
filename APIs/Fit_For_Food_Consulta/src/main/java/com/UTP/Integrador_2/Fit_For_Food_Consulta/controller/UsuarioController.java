package com.UTP.Integrador_2.Fit_For_Food_Consulta.controller;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.UsuarioBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.services.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UsuarioController {

    @Autowired
    UsuarioService usuarioService;

    @GetMapping("/usuario/{userID}")
    public UsuarioBean getRegisterByUserID(@PathVariable int userID) {
        UsuarioBean bean = this.usuarioService.getByUserID(userID);
        return bean;
    }
}
