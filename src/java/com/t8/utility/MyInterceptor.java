/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import com.t8.model.Airport_Flight_Details;
import java.io.Serializable;
import java.util.Date;
import java.util.Iterator;
import org.hibernate.EmptyInterceptor;
import org.hibernate.Transaction;
import org.hibernate.type.Type;

/**
 *
 * @author Earth
 */
public class MyInterceptor extends EmptyInterceptor{

    private int update;
    private int creates;
    private int loads;

    public void onDelete(Object entity, Serializable id, Object[] state, String[] propertyNames, Type[] types)
    {
    //do nothing
    }

    //This method is called when table is get updated
    public boolean onFlushDirty(Object entity, Serializable id, Object[] currentstate, Object[] previousstate, String[] propertyNames, Type[] types)
    {

        if(entity instanceof com.t8.model.Airport_Flight_Details)
        {
            System.out.println("Update Operation ...");
            update++;
            for(int i=0; i<propertyNames.length; i++)
            {
            if("lastUpdateTimestamp".equals(propertyNames[i]))
            {
            currentstate[i] = new Date();
             return true;
            }
            }

        }
        return false;
    }

    public boolean  onLoad(Object entity, Serializable id, Object[] state, String[] propertyNames, Type[] types)
    {
    if(entity instanceof com.t8.model.Airport_Flight_Details)
        {
        loads++;
        }
        return false;
    }

    public boolean onSave(Object entity, Serializable id, Object[] state, String[] propertyNames, Type[] types)
    {
        
     if(entity instanceof com.t8.model.Airport_Flight_Details)
        {
            System.out.println("Insert Operation ...");
           // InsertScheduler insertScheduler = new InsertScheduler();
        //insertScheduler.listFlightDetails();
        
            creates++;
            for(int i=0; i<propertyNames.length; i++)
            {
            if("createTimestamp".equals(propertyNames[i]))
            {
            state[i] = new Date();
             return true;
            }
            }
            }
        return false;
    }


    //Called before commit into database
    public void preFlush(Iterator iterator)
    {
        System.out.println("pre Flush");
    }

    //Called after committed into database
    public void postFlush(Iterator iterator)
    {
        
        System.out.println("post Flush");
    }

    public void afterTransactionCompletion(Transaction tx) {
    if(tx.wasCommitted())
    {
        System.out.println("Creations: "+creates+" , Updates: "+update+" , Loads: "+loads);
    }
    update=0;
    creates=0;
    loads=0;
    }
}
