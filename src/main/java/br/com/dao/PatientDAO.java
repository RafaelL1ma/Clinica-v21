package br.com.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import br.com.connection.ConnectionFactory;
import br.com.model.Patient;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;

public class PatientDAO {

    public Patient save(Patient patient) {
        EntityManager em = ConnectionFactory.getConnection();
        try {
            em.getTransaction().begin();
            em.persist(patient);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return patient;
    }

    public Patient update(Patient patient) {
        EntityManager em = ConnectionFactory.getConnection();
        try {
            em.getTransaction().begin();
            em.merge(patient);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return patient;
    }

    public Patient findById(Integer id) {
        EntityManager em = ConnectionFactory.getConnection();
        Patient patient = null;
        try {
            patient = em.find(Patient.class, id);
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return patient;
    }

    public List<Patient> findAll() {
        EntityManager em = ConnectionFactory.getConnection();
        List<Patient> patient = null;

        try {
            patient = em.createQuery("from Patient").getResultList();
            System.out.println(patient);
        } finally {
            em.close();
        }
        return patient;
    }

    public Patient remove(Integer id) {
        EntityManager em = ConnectionFactory.getConnection();
        Patient patient = null;
        try {
            patient = em.find(Patient.class, id);
            em.getTransaction().begin();
            em.remove(patient);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return patient;
    }

    public List<Patient> findByName(String findByName) {
        EntityManager em = ConnectionFactory.getConnection();

        Session session = (Session) em.getDelegate();
        Criteria criteria = session.createCriteria(Patient.class);
        Criterion c1 = Restrictions.ilike("name", findByName, MatchMode.ANYWHERE);
        criteria.add(c1);
        List<Patient> patient = criteria.list();
        em.close();
        return patient;
    }

}
