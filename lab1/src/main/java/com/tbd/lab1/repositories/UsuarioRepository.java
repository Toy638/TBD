package com.tbd.lab1.repositories;

import com.tbd.lab1.entities.UsuarioEntity;

import java.util.List;

public interface UsuarioRepository {
    public List<UsuarioEntity> findAll();

    public UsuarioEntity findById(Long id);

    public UsuarioEntity getByEmail(String email);

    public void register(UsuarioEntity usuario);

    public void update(UsuarioEntity usuario);

    public void delete(Long id);
}
