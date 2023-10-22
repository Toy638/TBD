package com.tbd.lab1.controllers;
import com.tbd.lab1.entities.EmergenciaEntity;
import com.tbd.lab1.repositories.EmergenciaRepositoryImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/emergencia")
public class EmergenciaController{

    @Autowired
    private EmergenciaRepositoryImpl emergenciaRepository;

    @GetMapping
    public ResponseEntity<List<EmergenciaEntity>> findAll(){
        List<EmergenciaEntity> emergencias = emergenciaRepository.findAll();
        return new ResponseEntity<>(emergencias, HttpStatus.OK);
    }

    @GetMapping("/{idEmergencia}")
    public ResponseEntity<EmergenciaEntity> findById(@PathVariable Long idEmergencia){
        EmergenciaEntity emergencia = emergenciaRepository.findById(idEmergencia);
        if(emergencia != null){
            return new ResponseEntity<>(emergencia, HttpStatus.OK);
        }else{
            return new ResponseEntity<>(emergencia, HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping
    public ResponseEntity<Void> create(@RequestBody EmergenciaEntity emergencia){
        emergenciaRepository.create(emergencia);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @PutMapping("/{idEmergencia}")
    public ResponseEntity<Void> update(@PathVariable Long idEmergencia, @RequestBody EmergenciaEntity emergencia){
        emergencia.setId_emergencia(idEmergencia);
        emergenciaRepository.update(emergencia);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping("/{idEmergencia}")
    public ResponseEntity<Void> delete(@PathVariable Long idEmergencia){
        emergenciaRepository.delete(idEmergencia);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

}
