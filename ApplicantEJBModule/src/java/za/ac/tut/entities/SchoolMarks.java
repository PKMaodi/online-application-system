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
import javax.persistence.OneToOne;

/**
 *
 * @author dell
 */
@Entity
public class SchoolMarks implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    private String id;
    private String subject1;
    private Integer sub1Mark;
    private String subject2;
    private Integer sub2Mark;
    private String subject3;
    private Integer sub3Mark;
    private String subject4;
    private Integer sub4Mark;
    private String subject5;
    private Integer sub5Mark;
    private String subject6;
    private Integer sub6Mark;
    private String subject7;
    private Integer sub7Mark;
    public SchoolMarks() {
    }

    public SchoolMarks(String id, String subject1, Integer sub1Mark, String subject2, Integer sub2Mark, String subject3, Integer sub3Mark, String subject4, Integer sub4Mark, String subject5, Integer sub5Mark, String subject6, Integer sub6Mark, String subject7, Integer sub7Mark, Applicant applicant, Integer aps) {
        this.id = id;
        this.subject1 = subject1;
        this.sub1Mark = sub1Mark;
        this.subject2 = subject2;
        this.sub2Mark = sub2Mark;
        this.subject3 = subject3;
        this.sub3Mark = sub3Mark;
        this.subject4 = subject4;
        this.sub4Mark = sub4Mark;
        this.subject5 = subject5;
        this.sub5Mark = sub5Mark;
        this.subject6 = subject6;
        this.sub6Mark = sub6Mark;
        this.subject7 = subject7;
        this.sub7Mark = sub7Mark;
    }

    public String getSubject1() {
        return subject1;
    }

    public void setSubject1(String subject1) {
        this.subject1 = subject1;
    }

    public Integer getSub1Mark() {
        return sub1Mark;
    }

    public void setSub1Mark(Integer sub1Mark) {
        this.sub1Mark = sub1Mark;
    }

    public String getSubject2() {
        return subject2;
    }

    public void setSubject2(String subject2) {
        this.subject2 = subject2;
    }

    public Integer getSub2Mark() {
        return sub2Mark;
    }

    public void setSub2Mark(Integer sub2Mark) {
        this.sub2Mark = sub2Mark;
    }

    public String getSubject3() {
        return subject3;
    }

    public void setSubject3(String subject3) {
        this.subject3 = subject3;
    }

    public Integer getSub3Mark() {
        return sub3Mark;
    }

    public void setSub3Mark(Integer sub3Mark) {
        this.sub3Mark = sub3Mark;
    }

    public String getSubject4() {
        return subject4;
    }

    public void setSubject4(String subject4) {
        this.subject4 = subject4;
    }

    public Integer getSub4Mark() {
        return sub4Mark;
    }

    public void setSub4Mark(Integer sub4Mark) {
        this.sub4Mark = sub4Mark;
    }

    public String getSubject5() {
        return subject5;
    }

    public void setSubject5(String subject5) {
        this.subject5 = subject5;
    }

    public Integer getSub5Mark() {
        return sub5Mark;
    }

    public void setSub5Mark(Integer sub5Mark) {
        this.sub5Mark = sub5Mark;
    }

    public String getSubject6() {
        return subject6;
    }

    public void setSubject6(String subject6) {
        this.subject6 = subject6;
    }

    public Integer getSub6Mark() {
        return sub6Mark;
    }

    public void setSub6Mark(Integer sub6Mark) {
        this.sub6Mark = sub6Mark;
    }

    public String getSubject7() {
        return subject7;
    }

    public void setSubject7(String subject7) {
        this.subject7 = subject7;
    }

    public Integer getSub7Mark() {
        return sub7Mark;
    }

    public void setSub7Mark(Integer sub7Mark) {
        this.sub7Mark = sub7Mark;
    }
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
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
        if (!(object instanceof SchoolMarks)) {
            return false;
        }
        SchoolMarks other = (SchoolMarks) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.entities.SchoolMarks[ id=" + id + " ]";
    }
    
}
