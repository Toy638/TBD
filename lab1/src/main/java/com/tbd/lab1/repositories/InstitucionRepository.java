package com.tbd.lab1.repositories;

import com.tbd.lab1.entities.InstitucionEntity;

import java.util.List;

public interface InstitucionRepository{
    public List<InstitucionEntity> findAll();
    public void create(InstitucionEntity institucion);
    //public InstitucionEntity create(InstitucionEntity institucion)
    public InstitucionEntity findById(Long id);
    public void update(InstitucionEntity institucion);
    //public InstitucionEntity update(InstitucionEntity institucion)
    public void delete(Long id);
    //public boolean deleteInstitucionById(Long id)

}
