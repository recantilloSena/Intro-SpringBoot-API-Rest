/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apirest.app.repository;

import com.apirest.app.modelo.Tutor;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author RICARDO
 */
public interface TutorRepository extends JpaRepository<Tutor, Integer> {
    
    // 3 formas de incluir métodos o consultas a mi repositorio
    
    //1. escribir una consulta NATIVA
    //2. escribir mis consulta con JPA
    
    
    
    //3. escribe los métodos Estandarizados Springboot te hace la consulta!!!!
    
    @Query("SELECT t FROM Tutor t  order by t.documentoTutor")
    List<Tutor> listarTutoresOrdenados();
    
    
    
    
    
    
    
    
    
}
