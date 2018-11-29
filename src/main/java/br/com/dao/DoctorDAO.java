package br.com.dao;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.connection.ConnectionFactory;
import br.com.model.Doctor;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

public class DoctorDAO {

    public Doctor save(Doctor doctor) {
        EntityManager em = ConnectionFactory.getConnection();
        try {
            em.getTransaction().begin();
            if (doctor.getId() == null) {
                em.persist(doctor);
            } else {
                em.merge(doctor);
            }
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return doctor;
    }

    public Doctor update(Doctor doctor) {
        EntityManager em = ConnectionFactory.getConnection();
        try {
            em.getTransaction().begin();
            em.merge(doctor);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return doctor;
    }

    public Doctor findById(Integer id) {
        EntityManager em = ConnectionFactory.getConnection();
        Doctor doctor = null;
        try {
            doctor = em.find(Doctor.class, id);
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return doctor;
    }

    public List<Doctor> findAll() {
        EntityManager em = ConnectionFactory.getConnection();
        List<Doctor> doctor = null;

        try {
            doctor = em.createQuery("from Doctor").getResultList();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return doctor;
    }

    public Doctor remove(Integer id) {
        EntityManager em = ConnectionFactory.getConnection();
        Doctor doctor = null;
        try {
            doctor = em.find(Doctor.class, id);
            em.getTransaction().begin();
            em.remove(doctor);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return doctor;
    }

    public List<Doctor> findByName(String findByName) {
        EntityManager em = ConnectionFactory.getConnection();

        Session session = (Session) em.getDelegate();
        Criteria criteria = session.createCriteria(Doctor.class);
        Criterion c1 = Restrictions.ilike("name", findByName, MatchMode.ANYWHERE);
        criteria.add(c1);
        List<Doctor> doctor = criteria.list();
        em.close();
        return doctor;
    }
}
