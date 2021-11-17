package com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.AlimentoModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import javax.websocket.server.PathParam;
import java.util.List;

public interface AlimentoRepository extends CrudRepository<AlimentoModel, Integer> {

    @Query("select a from alimento a where a.tipo = :tipo")
    List<AlimentoModel> findAllByType(@Param("tipo") String tipo);

    @Query("select a from alimento a where a.objetivoRelacionado = :objetivo")
    List<AlimentoModel> findAllByObjetive(@Param("objetivo") String objetivo);
}
