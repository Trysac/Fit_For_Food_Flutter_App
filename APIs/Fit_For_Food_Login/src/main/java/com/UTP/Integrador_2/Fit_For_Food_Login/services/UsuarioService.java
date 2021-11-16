package com.UTP.Integrador_2.Fit_For_Food_Login.services;

import com.UTP.Integrador_2.Fit_For_Food_Login.models.UsuarioModel;
import com.UTP.Integrador_2.Fit_For_Food_Login.reposiories.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class UsuarioService {

    @Autowired
    UsuarioRepository usuarioRepository;


    //Retornar usuario en base a ID
    public UsuarioModel obtenerUsuarios(long idUsuario){
        return  usuarioRepository.findById(idUsuario);
    }

    //Guardar (Registrar) nuevo usuario
    public UsuarioModel guardarUsuario(UsuarioModel usuario){
        return usuarioRepository.save(usuario);
    }
}
