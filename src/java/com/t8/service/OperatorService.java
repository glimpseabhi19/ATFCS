/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.service;

import com.t8.model.Operator;
import java.util.List;

/**
 *
 * @author Earth
 */
public interface OperatorService {
	
	public void addOperator(Operator team);
	public void updateOperator(Operator team);
	public Operator getOperator(int id);
	public void deleteOperator(int id);
        public boolean validateOperator(String operatorId, String password);
	public List<Operator> getOperator();

}