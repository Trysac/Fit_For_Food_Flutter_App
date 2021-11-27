package com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.EjercicioModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import java.util.Optional;

@Repository
public interface EjercicioRepository extends CrudRepository<EjercicioModel, Integer> {

    @Query("select e from EjercicioModel e where idUsuario = :userId")
    Optional<EjercicioModel> findUserById(@Param("userId") int userId);
}
