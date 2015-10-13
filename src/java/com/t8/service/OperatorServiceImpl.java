/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.service;

import com.t8.dao.OperatorDAO;
import com.t8.model.Operator;
import java.util.List;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Earth
 */
//@Service
//@Transactional
public class OperatorServiceImpl implements OperatorService{
    
        //@Autowired
	private OperatorDAO operatorDAO;

    @Override
    public void addOperator(Operator operator) {
        operatorDAO.addOperator(operator);
    }

    @Override
    public void updateOperator(Operator operator) {
        operatorDAO.updateOperator(operator);
    }

    @Override
    public Operator getOperator(int id) {
       return operatorDAO.getOperator(id);
    }

    @Override
    public void deleteOperator(int id) {
       operatorDAO.deleteOperator(id);
    }

    @Override
    public boolean validateOperator(String operatorId, String password) {
        return operatorDAO.validateOperator(operatorId, password);
    }

    @Override
    public List<Operator> getOperator() {
        return operatorDAO.getOperator();
    }
    
}
