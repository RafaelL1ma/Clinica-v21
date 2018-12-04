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
import br.com.model.Doctor;
import java.util.List;
import javax.inject.Inject;

@Controller
@Path("medico")
public class DoctorController {

    @Inject
    private Result result;

    @Inject
    private DoctorDAO doctorDAO;

    @Get("novo")
    public void newDoctor() {

    }
    
    
    @Post("novo")
    public void newDoctor(Doctor doctor) {
        doctorDAO.save(doctor);
        result.redirectTo(this).listDoctor();
    }

    @Post("atualizar")
    public void editDoctor(Doctor doctor) {
        doctorDAO.update(doctor);
        result.redirectTo(this).listDoctor();
    }

    @Get("editar/{id}")
    public void editDoctor(Integer id) {
        Doctor doctor = doctorDAO.findById(id);
        result.include("doctor", doctor);
    }

    @Get("remover/{id}")
    public void removeDoctor(Integer id) {

        Doctor doctor = doctorDAO.findById(id);
        result.include("doctor", doctor);
        doctorDAO.remove(id);
        result.redirectTo(this).listDoctor();
    }

    @Get("lista")
    public void listDoctor() {
        List<Doctor> doctor = doctorDAO.findAll();
        for (Doctor doctor1 : doctor) {
            System.out.println(doctor1.getName());
        }
        result.include("it", doctor);
    }
    @Public
    @Post("busca")
    public void simpleSearch(String doctorName) {
        
        List<Doctor> doctor = (List<Doctor>) doctorDAO.findByName(doctorName);
        result.include("it", doctor);
        result.of(this).listDoctor();

    }
    

}
