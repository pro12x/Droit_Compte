package com.groupeisi.tp.dao;

import com.groupeisi.tp.config.HibernateUtil;
import com.groupeisi.tp.entities.Compte;
import com.groupeisi.tp.interfaces.ICompte;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class CompteDAO extends RepositoryDAO<Compte> implements ICompte {

    public List <Compte> getAllCompte() {

        Transaction transaction = null;
        List < Compte > listOfCompte = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object

            listOfCompte = session.createQuery("from Compte").getResultList();

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfCompte;
    }

    public int validate(String username, String password) {
        Compte compte = null;
        Transaction transaction = null;
        int value = 0;
        try{
            transaction = session.beginTransaction();
            compte = (Compte) session.createQuery("FROM Compte WHERE username = :username").setParameter("username", username).uniqueResult();

            if(compte != null && compte.getPassword().equals(password)){
                value = 1;
            }
            transaction.commit();
        } catch (Exception e){
            if(transaction != null){
                System.out.println("Erreur"+e);
                transaction.rollback();
            }
            e.printStackTrace();
            value = 0;
        }
        return value;
    }
}