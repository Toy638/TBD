package com.tbd.lab1.repositories;

import com.tbd.lab1.entities.Eme_HabilidadEntity;
import com.tbd.lab1.entities.EmergenciaEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.ArrayList;
import java.util.List;

@Repository
public class EmergenciaRepositoryImpl implements EmergenciaRepository{
    @Autowired
    private Sql2o sql2o;

    @Override
    public List<EmergenciaEntity> findAll() {
        List<Eme_HabilidadEntity> eme_habilidades = new ArrayList<>();
        String sqlQuery = "SELECT * FROM eme_habilidad ORDER BY id_eme_habilidad ASC";
        try (Connection con = sql2o.open()) {
            eme_habilidades = con.createQuery(sqlQuery).executeAndFetch(Eme_HabilidadEntity.class);
        } catch (Exception e) {
            // Conexion a sql ha fallado

        }
        return eme_habilidades;
    }

    @Override
    public void create(EmergenciaEntity emergencia) {
        String sqlQuery = "INSERT INTO eme_habilidad (id_eme_habilidad, id_emergencia, id_habilidad) VALUES (:idEmeHabilidad, :idEmergencia, :idHabilidad)";
        try (Connection con = sql2o.beginTransaction()) {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            String username = authentication.getName();
            String sqlSet = "SELECT set_tbd_usuario(:username)";
            con.createQuery(sqlSet)
                    .addParameter("username", username)
                    .executeScalar();
            con.createQuery(sqlQuery)
                    .addParameter("idEmeHabilidad", emergencia.getId_eme_habilidad())
                    .addParameter("idEmergencia", emergencia.getId_emergencia())
                    .addParameter("idHabilidad", emergencia.getId_habilidad())
                    .executeUpdate();
            con.commit();
        }
    }

    // Función create sin seguridad
    /*
    public Eme_HabilidadEntity create(Eme_HabilidadEntity eme_habilidad) {
        try(Connection conn = sql2o.open()){
            int insertedId = (int) conn.createQuery("INSERT INTO eme_habilidad (id_emergencia, id_habilidad) values (:id_emergencia, :id_habilidad)", true)
                    .addParameter("id_emergencia", eme_habilidad.getId_emergencia())
                    .addParameter("id_habilidad", eme_habilidad.getId_habilidad())
                    .executeUpdate().getKey();
            return eme_habilidad;
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    */

    @Override
    public EmergenciaEntity findById(Long id) {
        String sqlQuery = "SELECT * FROM eme_habilidad WHERE id_eme_habilidad = :id";
        try (Connection con = sql2o.open()) {
            return con.createQuery(sqlQuery)
                    .addParameter("id", id)
                    .executeAndFetchFirst(Eme_HabilidadEntity.class);
        } catch (Exception e) {
            System.out.println("Error: " + e);
            return null;
        }
    }

    @Override
    public List<EmergenciaEntity> findByIdEmergencia(Long idEmergencia) {
        List<Eme_HabilidadEntity> eme_habilidades = null;
        String sqlQuery = "SELECT * FROM eme_habilidad WHERE id_emergencia = :id";
        try (Connection con = sql2o.open()) {
            eme_habilidades = con.createQuery(sqlQuery).addParameter("id", idEmergencia).executeAndFetch(Eme_HabilidadEntity.class);
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return eme_habilidades;
    }

    @Override
    public List<EmergenciaEntity> findByIdHabilidad(Long idHabilidad) {
        List<Eme_HabilidadEntity> eme_habilidades = null;
        String sqlQuery = "SELECT * FROM eme_habilidad WHERE id_habilidad = :id";
        try (Connection con = sql2o.open()) {
            eme_habilidades = con.createQuery(sqlQuery).addParameter("id", idHabilidad).executeAndFetch(Eme_HabilidadEntity.class);
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return eme_habilidades;
    }


    @Override
    public void update(Eme_HabilidadEntity eme_habilidad) {
        String sqlQuery = "UPDATE eme_habilidad SET id_emergencia = :idEmergencia, id_habilidad = :idHabilidad WHERE id_eme_habilidad = :idEmeHabilidad";
        try (Connection con = sql2o.beginTransaction()){
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            String username = authentication.getName();
            String sqlSet = "SELECT set_tbd_usuario(:username)";
            con.createQuery(sqlSet)
                    .addParameter("username", username)
                    .executeScalar();

            con.createQuery(sqlQuery)
                    .addParameter("idEmergencia", eme_habilidad.getId_emergencia())
                    .addParameter("idHabilidad", eme_habilidad.getId_habilidad())
                    .addParameter("idEmeHabilidad", eme_habilidad.getId_eme_habilidad())
                    .executeUpdate();
            con.commit();
        }
    }

    /*
    // Función update sin seguridad
    public Eme_HabilidadEntity update(Eme_HabilidadEntity eme_habilidad) {
        try(Connection conn = sql2o.open()) {
            conn.createQuery("UPDATE eme_habilidad SET id_emergencia = :id_emergencia, id_habilidad = :id_habilidad WHERE id_eme_habilidad = :id")
                    .addParameter("id", eme_habilidad.getId_eme_habilidad())
                    .addParameter("id_emergencia", eme_habilidad.getId_emergencia())
                    .addParameter("id_habilidad", eme_habilidad.getId_habilidad())
                    .executeUpdate();
            return eme_habilidad;
        }
    }
     */

    @Override
    public void delete(Long id) {
        String sqlQuery = "DELETE FROM eme_habilidad WHERE id_eme_habilidad = :id";
        try (Connection con = sql2o.beginTransaction()) {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            String username = authentication.getName();
            String sqlSet = "SELECT set_tbd_usuario(:username)";
            con.createQuery(sqlSet)
                    .addParameter("username", username)
                    .executeScalar();

            con.createQuery(sqlQuery).addParameter("id", id).executeUpdate();
            con.commit();
        }
    }

    // Función delete sin seguridad
    /*
    public boolean deleteEme_HabilidadById(Long id) {
        try(Connection conn = sql2o.open()) {
            conn.createQuery("DELETE FROM eme_habilidad WHERE id_eme_habilidad = :id")
                    .addParameter("id", id)
                    .executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
     */
}
