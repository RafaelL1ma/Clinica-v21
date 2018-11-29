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
import br.com.dao.MedicalCareDAO;
import javax.inject.Inject;
import br.com.model.MedicalCare;
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

    @Get("novo")
    public void newMedicalCare() {

    }

    @Post("novo")
    public void newMedicalCare(MedicalCare care) {
        careDao.save(care);
        result.redirectTo(this).listMedicalCare();
    }

    @Post("atualizar")
    public void editMedicalCare(MedicalCare medicalCare) {
        careDao.update(medicalCare);
        result.redirectTo(this).listMedicalCare();
    }
    
    @Get("remover/{id}")
    public void removePatient(Integer id) {

        MedicalCare medicalCare = careDao.findById(id);
        result.include("medicalCare", medicalCare);
        careDao.remove(id);
        result.redirectTo(this).listMedicalCare();
    }
    @Get("editar/{id}")
    public void editMedicalCare(Integer id) {
       MedicalCare medicalCare = careDao.findById(id);
        result.include("medicalCare", medicalCare);
 
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
