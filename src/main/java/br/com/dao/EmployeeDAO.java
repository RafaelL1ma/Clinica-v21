/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.dao;

import br.com.connection.ConnectionFactory;
import br.com.model.Employee;
import java.util.List;
import javax.persistence.EntityManager;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Mateus Alencar
 */
public class EmployeeDAO {

    public Employee save(Employee employee) {
        EntityManager em = ConnectionFactory.getConnection();

        try {
            em.getTransaction().begin();
            if (employee.getId() == null) {
                em.persist(employee);
            } else {
                em.merge(employee);
            }
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return employee;
    }
        public Employee update(Employee employee) {
        EntityManager em = ConnectionFactory.getConnection();
        try {
            em.getTransaction().begin();
            em.merge(employee);
            em.getTransaction().commit();
        } catch (Exception e){
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return employee;
    }
    public Employee findById(Integer id) {
        EntityManager em = ConnectionFactory.getConnection();
        Employee employee = null;
        try {
            employee = em.find(Employee.class, id);
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return employee;
    }

    public List<Employee> findAll() {
        EntityManager em = ConnectionFactory.getConnection();
        List<Employee> employee = null;

        try {
            employee = em.createQuery("from Employee").getResultList();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return employee;
    }

    public Employee remove(Integer id) {
        EntityManager em = ConnectionFactory.getConnection();
        Employee employee = null;
        try {
            employee = em.find(Employee.class, id);
            em.getTransaction().begin();
            em.remove(employee);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return employee;
    }

    public Employee findByName(String nomeBuscado) {
        EntityManager em = ConnectionFactory.getConnection();

        Session session = (Session) em.getDelegate();
        Criteria criteria = session.createCriteria(Employee.class);
        criteria.add(Restrictions.eq("nome", nomeBuscado));

        return (Employee) criteria.uniqueResult();
    }

}
