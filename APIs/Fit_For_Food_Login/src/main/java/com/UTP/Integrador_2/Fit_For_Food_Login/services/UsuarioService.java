package com.UTP.Integrador_2.Fit_For_Food_Login.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsuarioService {

    @Autowired
    UsuarioRepository usuarioRepository;

    /*public UsuarioModel obtenerUsuarios(int idUsuario){
        return (UsuarioModel) usuarioRepository.findById(idUsuario);
    }*/
}
