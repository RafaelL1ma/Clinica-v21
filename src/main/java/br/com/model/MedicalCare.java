package br.com.model;



import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class MedicalCare {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String data;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn 
    private Doctor doctor;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn
    private Patient patient;

    public Doctor getDoctor() {
        return doctor;
    }
    
    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    
    
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    
    public void setVisible(boolean b) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * @return the patient
     */
    public Patient getPatient() {
        return patient;
    }

    /**
     * @param patient the patient to set
     */
    public void setPatient(Patient patient) {
        this.patient = patient;
    }

}
