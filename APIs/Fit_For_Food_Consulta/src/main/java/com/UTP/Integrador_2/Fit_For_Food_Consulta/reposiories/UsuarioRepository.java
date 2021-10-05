package com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.UsuarioModel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends CrudRepository<UsuarioModel, Integer> {

}
