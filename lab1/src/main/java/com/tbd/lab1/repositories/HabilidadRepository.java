package com.tbd.lab1.repositories;

import com.tbd.lab1.entities.HabilidadEntity;

import java.util.List;

public interface HabilidadRepository {

    /*public int countHabilidades();*/

    /*public int newId();*/

    public List<HabilidadEntity> getAllHabilidades();
    public HabilidadEntity getHabilidadById(long id);
    public void createHabilidad(HabilidadEntity habilidad);
    //public HabilidadEntity create(HabilidadEntity habilidad)
    public void updateHabilidad(HabilidadEntity habilidad);
    //public HabilidadEntity update(HabilidadEntity habilidad)
    public void deleteHabilidadById(long id);
    //public boolean deleteHabilidadById(Long id)


}
