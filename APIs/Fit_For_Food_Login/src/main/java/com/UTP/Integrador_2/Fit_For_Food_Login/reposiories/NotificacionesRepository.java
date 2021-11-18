package com.UTP.Integrador_2.Fit_For_Food_Login.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Login.models.NotificacionesModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface NotificacionesRepository extends CrudRepository<NotificacionesModel, Integer> {

    @Query("select n from notificaciones n where idUsuario = :userId")
    Optional<NotificacionesModel> findUserById(@Param("userId") int userId);
}
