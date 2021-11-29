package com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.CaloriasModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.NewCaloriasModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import java.util.Optional;

@Repository
public interface CaloriasRepository extends CrudRepository<NewCaloriasModel, Integer> {

    @Query("select c from CaloriasModel c where idUsuario = :userId")
    Optional<NewCaloriasModel> findUserById(@Param("userId") int userId);
}
