package com.UTP.Integrador_2.Fit_For_Food_Login.controller;

import com.UTP.Integrador_2.Fit_For_Food_Login.beans.UsuarioBean;
import com.UTP.Integrador_2.Fit_For_Food_Login.services.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Map;

public class UsuarioController {

    @Autowired
    UsuarioService usuarioService;

//    @GetMapping("/usuario/{userID}")
//    public UsuarioBean getRegisterByUserID(@PathVariable int userID) {
//        UsuarioBean bean = this.usuarioService.getByUserID(userID);
//        return bean;
//    }

    @GetMapping("/usuario/{userCredencials}")
    public String validateUser(@PathVariable Map<String, String> userCredencials) {
        String pass = userCredencials.get("password");
        String mail = userCredencials.get("email");
        String validationResult = usuarioService.validateUser(mail,pass);
        return validationResult;
    }


}
