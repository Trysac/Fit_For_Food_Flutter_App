package com.UTP.Integrador_2.Fit_For_Food_Login.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Login.models.NotificacionesModel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificacionesRepository extends CrudRepository<NotificacionesModel, Integer> {

}
