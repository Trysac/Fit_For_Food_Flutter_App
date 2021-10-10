package com.UTP.Integrador_2.Fit_For_Food_Login.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Login.models.UsuarioModel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends CrudRepository<UsuarioModel, Integer> {

}
