package com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.AlimentoModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AlimentoRepository extends JpaRepository<AlimentoModel, Integer> {

    @Query("select a from AlimentoModel a where tipo = :tipo")
    List<AlimentoModel> findAllByType(@Param("tipo") String tipo);

    @Query("select a from AlimentoModel a where objetivoRelacionado = :objetivo")
    List<AlimentoModel> findAllByObjetive(@Param("objetivo") String objetivo);
}
