package com.tbd.lab1.repositories;

import com.tbd.lab1.entities.UsuarioEntity;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class UsuarioRepositoryImpl implements UsuarioRepository{

    private final Sql2o sql2o;

    public UsuarioRepositoryImpl(Sql2o sql2o) {
        this.sql2o = sql2o;
    }

    @Override
    public List<UsuarioEntity> findAll() {
        return null;
    }

    @Override
    public UsuarioEntity findById(Long id) {
        return null;
    }

    @Override
    public UsuarioEntity getByEmail(String email) {
        try (Connection connection = sql2o.open()) {
            String query = "SELECT * FROM usuario WHERE email = :email";
            return connection.createQuery(query).addParameter("email", email).executeAndFetchFirst(UsuarioEntity.class);
        }
    }

    @Override
    public void register(UsuarioEntity usuario) {
        try (Connection connection = sql2o.beginTransaction()) {
            String query = "INSERT INTO usuario (email, password, rol) VALUES (:email, :password, :rol)";
            connection.createQuery(query, true)
                    .addParameter("email", usuario.getEmail())
                    .addParameter("password", usuario.getPassword())
                    .addParameter("rol", usuario.getRol())
                    .executeUpdate();
            connection.commit();
        }

    }

    @Override
    public void update(UsuarioEntity usuario) {

    }

    @Override
    public void delete(Long id) {

    }
}
