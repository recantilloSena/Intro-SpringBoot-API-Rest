/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apirest.app.rest;

import com.apirest.app.modelo.Tutor;
import com.apirest.app.repository.TutorRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author RICARDO
 */
@RestController
@RequestMapping("/api/v1/")
public class TutorRest {
    
    @Autowired
    TutorRepository tutorService;
    
    
    @GetMapping("/tutor/list")
    public List<Tutor> findAllTutor(){        
        return tutorService.findAll();
        
    }
    
    
    @PostMapping("/tutor/add")
    public Tutor addTutor(@RequestBody Tutor tutor){
        return tutorService.save(tutor);
    }
    
    @GetMapping("/tutor/list/order")
    public List<Tutor> findAllOrder(){        
        return tutorService.listarTutoresOrdenados();
        
    }
    
    
    
    
    
}
