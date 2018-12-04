/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.controller;

import br.com.annotations.Public;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dao.DoctorDAO;
import br.com.dao.MedicalCareDAO;
import br.com.dao.PatientDAO;
import br.com.model.Doctor;
import javax.inject.Inject;
import br.com.model.MedicalCare;
import br.com.model.Patient;
import java.util.List;

/**
 *
 * @author Mateus Alencar
 */
@Controller
@Path("consulta")
public class MedicalCareController {

    @Inject
    private Result result;
    @Inject
    private MedicalCareDAO careDao;
    @Inject
    private DoctorDAO doctorDAO;
    @Inject
    private PatientDAO patientDAO;

    @Get("novo")
    public void newMedicalCare() {
        List<Patient> patient = patientDAO.findAll();
        for (Patient patient1 : patient) {

        }
        result.include("et", patient);

        List<Doctor> doctor = doctorDAO.findAll();
        for (Doctor doctor1 : doctor) {
        }
        result.include("it", doctor);
    }

    
    
    @Post("novo")
    public void newMedicalCare(MedicalCare care, Integer doctorId, Integer patientId) {
        Patient patient = patientDAO.findById(patientId);
        care.setPatient(patient);
        Doctor doctor = doctorDAO.findById(doctorId);
        care.setDoctor(doctor);
        careDao.save(care);
        result.redirectTo(this).listMedicalCare();
    }

    @Post("editar")
    public void editMedicalCare(MedicalCare medicalCare, Integer doctorId, Integer patientId) {
        Patient patient = patientDAO.findById(patientId);
        medicalCare.setPatient(patient);
        Doctor doctor = doctorDAO.findById(doctorId);
        medicalCare.setDoctor(doctor);
        careDao.update(medicalCare);
        result.redirectTo(this).listMedicalCare();
    }

    @Get("editar/{id}")
    public void editMedicalCare(Integer id) {
        List<Doctor> doctor = doctorDAO.findAll();
        for (Doctor doctor1 : doctor) {
        }
        result.include("cu", doctor);
        
        List<Patient> patient = patientDAO.findAll();
        for (Patient patient1 : patient) {

        }
        result.include("co", patient);

        MedicalCare medicalCare = careDao.findById(id);
        result.include("medicalCare", medicalCare);

    }

    @Get("remover/{id}")
    public void removePatient(Integer id) {

        MedicalCare medicalCare = careDao.findById(id);
        result.include("medicalCare", medicalCare);
        careDao.remove(id);
        result.redirectTo(this).listMedicalCare();
    }

    @Get("lista")
    public void listMedicalCare() {

        List<MedicalCare> medicalCare = careDao.findAll();
        for (MedicalCare medicalCare1 : medicalCare) {
            System.out.println(medicalCare1.getData());
        }
        result.include("it", medicalCare);
    }

    @Public
    @Post("simples")
    public void simpleSearch(String medicalCareDate) {

        List<MedicalCare> medicalCare = (List<MedicalCare>) careDao.findByDate(medicalCareDate);
        result.include("it", medicalCare);
        result.of(this).listMedicalCare();

    }
}
