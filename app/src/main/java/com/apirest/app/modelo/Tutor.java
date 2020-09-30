/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apirest.app.modelo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author RICARDO
 */
@Entity
@Table(name = "tutor")
@NamedQueries({
    @NamedQuery(name = "Tutor.findAll", query = "SELECT t FROM Tutor t"),
    @NamedQuery(name = "Tutor.findByDocumentoTutor", query = "SELECT t FROM Tutor t WHERE t.documentoTutor = :documentoTutor"),
    @NamedQuery(name = "Tutor.findByNombreTutor", query = "SELECT t FROM Tutor t  order by t.documentoTutor"),
    @NamedQuery(name = "Tutor.findByApellidoTutor", query = "SELECT t FROM Tutor t WHERE t.apellidoTutor = :apellidoTutor"),
    @NamedQuery(name = "Tutor.findByFechaNacimiento", query = "SELECT t FROM Tutor t WHERE t.fechaNacimiento = :fechaNacimiento"),
    @NamedQuery(name = "Tutor.findByEstado", query = "SELECT t FROM Tutor t WHERE t.estado = :estado"),
    @NamedQuery(name = "Tutor.findByExperiencia", query = "SELECT t FROM Tutor t WHERE t.experiencia = :experiencia")})
public class Tutor implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Id
    @Basic(optional = false)
    @Column(name = "documento_tutor")
    private Integer documentoTutor;
    
    
    @Basic(optional = false)
    @Column(name = "nombre_tutor")
    private String nombreTutor;
    
    
    @Basic(optional = false)
    @Column(name = "apellido_tutor")
    private String apellidoTutor;
    
   
    @Basic(optional = false)
    @Column(name = "fecha_nacimiento")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaNacimiento;
    
    @Basic(optional = false)
    @Column(name = "estado")
    private String estado;
    
    @Column(name = "experiencia")
    private String experiencia;

    public Tutor() {
    }

    public Tutor(Integer documentoTutor) {
        this.documentoTutor = documentoTutor;
    }

   

    public Integer getDocumentoTutor() {
        return documentoTutor;
    }

    public void setDocumentoTutor(Integer documentoTutor) {
        this.documentoTutor = documentoTutor;
    }

    public String getNombreTutor() {
        return nombreTutor;
    }

    public void setNombreTutor(String nombreTutor) {
        this.nombreTutor = nombreTutor;
    }

    public String getApellidoTutor() {
        return apellidoTutor;
    }

    public void setApellidoTutor(String apellidoTutor) {
        this.apellidoTutor = apellidoTutor;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    

    public String getExperiencia() {
        return experiencia;
    }

    public void setExperiencia(String experiencia) {
        this.experiencia = experiencia;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (documentoTutor != null ? documentoTutor.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tutor)) {
            return false;
        }
        Tutor other = (Tutor) object;
        if ((this.documentoTutor == null && other.documentoTutor != null) || (this.documentoTutor != null && !this.documentoTutor.equals(other.documentoTutor))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.apirest.app.modelo.Tutor[ documentoTutor=" + documentoTutor + " ]";
    }
    
}
