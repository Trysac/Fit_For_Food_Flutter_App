package com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.AlimentoModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.UsuarioPremiumModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UsuarioPremiumRepository extends CrudRepository<UsuarioPremiumModel, Integer> {
    @Query("select u from usuario_premium u where u.idUsuario = :userId")
    Optional<AlimentoModel> findUserById(@Param("userId") int userId);
}
