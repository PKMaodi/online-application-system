/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author dell
 */
@Entity
public class NextOfKin implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    /*
    name, surname email, address, postalcode, phone
    */
    private String name;
    private String surname;
    private String email;
    private String madulo;
    private String pcode;
    private String phone;

    public NextOfKin() {
    }

    public NextOfKin(Long id, String name, String surname, String email, String madulo, String pcode, String phone) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.madulo = madulo;
        this.pcode = pcode;
        this.phone = phone;
    }

    public String getMadulo() {
        return madulo;
    }

    public void setMadulo(String madulo) {
        this.madulo = madulo;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public String getPcode() {
        return pcode;
    }

    public void setPcode(String pcode) {
        this.pcode = pcode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NextOfKin)) {
            return false;
        }
        NextOfKin other = (NextOfKin) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.entities.NextOfKin[ id=" + id + " ]";
    }
    
}
