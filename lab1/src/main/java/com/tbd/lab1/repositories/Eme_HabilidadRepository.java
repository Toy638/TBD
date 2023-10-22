package com.tbd.lab1.repositories;

import com.tbd.lab1.entities.Eme_HabilidadEntity;

import java.util.List;

public interface Eme_HabilidadRepository {
    public List<Eme_HabilidadEntity> findAll();
    public void create(Eme_HabilidadEntity eme_habilidad);
    //public Eme_HabilidadEntity create(Eme_HabilidadEntity eme_habilidad)
    public Eme_HabilidadEntity findById(Long id);
    public List<Eme_HabilidadEntity> findByIdEmergencia(Long idEmergencia);

    public List<Eme_HabilidadEntity> findByIdHabilidad(Long idHabilidad);
    public void update(Eme_HabilidadEntity eme_habilidad);
    //public Eme_HabilidadEntity update(Eme_HabilidadEntity eme_habilidad)
    public void delete(Long id);
    //public boolean deleteEme_HabilidadById(Long id)
}
