package br.com.dao;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.connection.ConnectionFactory;
import br.com.model.MedicalCare;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

public class MedicalCareDAO {

    public MedicalCare save(MedicalCare care) {
        EntityManager em = ConnectionFactory.getConnection();
        try {
            em.getTransaction().begin();
            if (care.getId() == null) {
                em.persist(care);
            } else {
                em.merge(care);
            }

            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return care;
    }

    public MedicalCare update(MedicalCare care) {
        EntityManager em = ConnectionFactory.getConnection();
        try {
            em.getTransaction().begin();
            em.merge(care);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
        return care;
    }

    public MedicalCare findById(Integer id) {
        EntityManager em = ConnectionFactory.getConnection();
        MedicalCare care = null;

        try {
            care = em.find(MedicalCare.class, id);
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return care;
    }

    public List<MedicalCare> findAll() {
        EntityManager em = ConnectionFactory.getConnection();
        List<MedicalCare> care = null;
        try {
            care = em.createQuery("from MedicalCare").getResultList();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return care;
    }

    public MedicalCare remove(Integer id) {
        EntityManager em = ConnectionFactory.getConnection();
        MedicalCare care = null;

        try {
            care = em.find(MedicalCare.class, id);

            em.getTransaction().begin();
            em.remove(care);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return care;
    }
    public List<MedicalCare> findByDate(String findByDate) {
        EntityManager em = ConnectionFactory.getConnection();

        Session session = (Session) em.getDelegate();
        Criteria criteria = session.createCriteria(MedicalCare.class);
        Criterion c1 = Restrictions.ilike("data", findByDate, MatchMode.ANYWHERE);
        criteria.add(c1);
        List<MedicalCare> medicalCare = criteria.list();
        em.close();
        return medicalCare;
    }
}
