package com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.AlimentoModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AlimentoRepository extends CrudRepository<AlimentoModel, Integer> {
//    @Query("select a from alimento a")
//    List<AlimentoModel> findAll();
}
