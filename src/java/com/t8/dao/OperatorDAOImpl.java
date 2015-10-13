/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.dao;

import com.t8.model.Operator;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;

/**
 *
 * @author Earth
 */
//@Repository
public class OperatorDAOImpl implements OperatorDAO{

    //@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
    
    
    @Override
    public void addOperator(Operator operator) {
        getCurrentSession().save(operator);
    }

    @Override
    public void updateOperator(Operator operator) {
       
        Operator operatorToUpdate = getOperator(operator.getOperatorId());
		//operatorToUpdate.setName(operator.getName());
		//operatorToUpdate.setRating(operator.getRating());
		getCurrentSession().update(operatorToUpdate);
    }

    @Override
    public Operator getOperator(int id) {
       Operator operator = (Operator) getCurrentSession().get(Operator.class, id);
		return operator;
    }

    @Override
    public void deleteOperator(int id) {
       Operator operator = getOperator(id);
		if (operator != null)
			getCurrentSession().delete(operator);
    }

    @Override
    public boolean validateOperator(String operatorId, String password) {
        System.out.println("inside validate operator method");
        if(operatorId.isEmpty()||password.isEmpty())
            return false;
        else 
        if(operatorId.equalsIgnoreCase(password))
        return true;
       else
          return  false;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Operator> getOperator() {
      return getCurrentSession().createQuery("from operatormaster").list();
    }
    
}
