package com.UTP.Integrador_2.Fit_For_Food_Login.reposiories;

import com.UTP.Integrador_2.Fit_For_Food_Login.models.UsuarioModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UsuarioRepository extends CrudRepository<UsuarioModel, Integer> {

    @Query("select u from usuario u where id = :id")
    Optional<UsuarioModel> findUserById(@Param("id") int id);

    @Query("select u from usuario u where correo = :email")
    Optional<UsuarioModel> findUserByMail(@Param("email") String email);
}
