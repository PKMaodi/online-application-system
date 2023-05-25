/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.Transient;

/**
 *
 * @author dell
 */
@Entity
public class Applicant implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    private String id;
    private String firstName;
    @Transient
    private String midName;
    private String surname;
    private String phoneNumber;
    private String emailAddress;
    private String Address;
    private Integer aps;
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date creationDate;
    private String qualification;
    private String applicationStatus;

    public Applicant() {
    }

    public Applicant(String id, String firstName, String midName, String surname, String phoneNumber, String emailAddress, String Address, Integer aps, Date creationDate, String qualification, String applicationStatus) {
        this.id = id;
        this.firstName = firstName;
        this.midName = midName;
        this.surname = surname;
        this.phoneNumber = phoneNumber;
        this.emailAddress = emailAddress;
        this.Address = Address;
        this.aps = aps;
        this.creationDate = creationDate;
        this.qualification = qualification;
        this.applicationStatus = applicationStatus;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getApplicationStatus() {
        return applicationStatus;
    }

    public void setApplicationStatus(String applicationStatus) {
        this.applicationStatus = applicationStatus;
    }
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMidName() {
        return midName;
    }

    public void setMidName(String midName) {
        this.midName = midName;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public Integer getAps() {
        return aps;
    }

    public void setAps(Integer aps) {
        this.aps = aps;
    }
    
    
}
