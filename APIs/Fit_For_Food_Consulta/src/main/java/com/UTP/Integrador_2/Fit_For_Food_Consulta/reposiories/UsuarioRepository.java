package com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.AlimentoModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.UsuarioModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UsuarioRepository extends CrudRepository<UsuarioModel, Integer> {
    @Query("select u from usuario u where u.id = :id")
    Optional<AlimentoModel> findUserById(@Param("id") int id);
}
