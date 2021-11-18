package com.UTP.Integrador_2.Fit_For_Food_Login.controller;

import com.UTP.Integrador_2.Fit_For_Food_Login.models.UsuarioModel;
import com.UTP.Integrador_2.Fit_For_Food_Login.services.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/usuario")
public class UsuarioController {

    @Autowired
    UsuarioService usuarioService;

   /* @GetMapping()
    public ArrayList<UsuarioModel> obtenerUsuarios(){
        return usuarioService.getUsuarios();
    }*/

//    @PostMapping()
//    public UsuarioModel guardarUsuario(@RequestBody UsuarioModel usuario){
//        return this.usuarioService.guardarUsuario(usuario);
//    }
}
