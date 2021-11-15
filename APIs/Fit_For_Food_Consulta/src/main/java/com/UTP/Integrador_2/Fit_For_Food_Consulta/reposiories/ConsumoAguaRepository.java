package com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.AlimentoModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.ConsumoAguaModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ConsumoAguaRepository extends CrudRepository<ConsumoAguaModel, Integer> {
    @Query("select c from consumo_agua c where c.idUsuario = :userId")
    Optional<AlimentoModel> findUserById(@Param("userId") int userId);
}
