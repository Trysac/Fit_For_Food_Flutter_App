package com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.CaloriasModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import java.util.Optional;

@Repository
public interface CaloriasRepository extends CrudRepository<CaloriasModel, Integer> {

    @Query("select c from calorias c where idUsuario = :userId")
    Optional<CaloriasModel> findUserById(@Param("userId") int userId);
}
