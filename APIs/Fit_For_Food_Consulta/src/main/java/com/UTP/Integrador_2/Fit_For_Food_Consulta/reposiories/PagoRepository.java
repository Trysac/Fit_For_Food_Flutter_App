package com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.PagoModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface PagoRepository extends CrudRepository<PagoModel, Integer> {

    @Query("select p from PagoModel p where idUsuario = :userId")
    Optional<PagoModel> findUserById(@Param("userId") int userId);
}
