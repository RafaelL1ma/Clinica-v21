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
import br.com.dao.PatientDAO;
import br.com.model.Patient;
import javax.inject.Inject;
import java.util.List;

/**
 *
 * @author Rafael
 */
@Controller
@Path("paciente")
public class PatientController {

    @Inject
    private Result result;

    @Inject
    private PatientDAO patientDAO;

    @Get("novo")
    public void newPatient() {
    }

    @Post("novo")
    public void newPatient(Patient patient) {
        patientDAO.save(patient);
        result.redirectTo(this).listPatient();
    }

    @Post("atualizar")
    public void editPatient(Patient patient) {
        patientDAO.update(patient);
        result.redirectTo(this).listPatient();
    }

    @Get("editar/{id}")
    public void editPatient(Integer id) {
        Patient patient = patientDAO.findById(id);
        result.include("patient", patient);

    }

    @Get("lista")
    public void listPatient() {

        List<Patient> patient = patientDAO.findAll();
        for (Patient patient1 : patient) {
            System.out.println(patient1.getName());
        }
        result.include("it", patient);
    }

    @Get("remover/{id}")
    public void removePatient(Integer id) {

        Patient patient = patientDAO.findById(id);
        result.include("patient", patient);
        patientDAO.remove(id);
        result.redirectTo(this).listPatient();
    }

    @Public
    @Post("simples")
    public void simpleSearch(String patientName) {
        
        List<Patient> patient = (List<Patient>) patientDAO.findByName(patientName);
        result.include("it", patient);
        result.of(this).listPatient();

    }
}
