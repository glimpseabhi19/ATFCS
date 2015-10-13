/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import com.t8.model.LandingSlotMaster;
import com.t8.model.Landing_Slot_Schdl;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 *
 * @author Earth
 */
public class InsertLandingSlotSchdl implements Job{

    
    public static SessionFactory sessionFactory;
    
        public void insertHibernate() {
        sessionFactory = new Configuration().configure("/hibernate.cfg.xml").buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        String temp = "", model = "", avail="";
      
        try {

             int START = 1;
        int END = 25;
        Random random = new Random();
        int rand = 0;
       // for (int idx = 1; idx <= 9; ++idx) {
             rand = showRandomInteger(START, END, random);
             if(rand  % 2 == 0 ){
                 temp = "Wide Body (Boeing)";
                 model = "B777-300ER";
                 avail = "Y";
             } else {
                 temp = "Narrow Body (Airbus)";
                  model = "A320 (CLASSIC)";
                  avail = "N";
             }
            
            Landing_Slot_Schdl landingSlotSchdl = new Landing_Slot_Schdl();
            
            landingSlotSchdl.setAirportCode("KNS");
            landingSlotSchdl.setParkingSlotNumber("PB01_03");
            landingSlotSchdl.setBayCode("PB01");
            landingSlotSchdl.setDateTimeLogged(Timestamp.valueOf(dateFormat.format(date)));
            landingSlotSchdl.setSeqNo(1001);
            landingSlotSchdl.setRunWayCode("RC01");
            landingSlotSchdl.setAirlineCode("ANA");
            landingSlotSchdl.setFlightCode("B777-300ER");
            landingSlotSchdl.setFlightExpArrivalTime(Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() + rand * 60 * 1000)));
            landingSlotSchdl.setFlightActArrivalTime(Timestamp.valueOf(dateFormat.format(date)));
            landingSlotSchdl.setSlotBookedFromTime(Timestamp.valueOf(dateFormat.format(date)));
            landingSlotSchdl.setSlotBookedToTime(Timestamp.valueOf(dateFormat.format(date)));
            landingSlotSchdl.setSlotFreeExpTime(Timestamp.valueOf(dateFormat.format(date)));
            landingSlotSchdl.setSlotFreeActTime(Timestamp.valueOf(dateFormat.format(date)));
            landingSlotSchdl.setFlightDEPAPCode("NRT");
            landingSlotSchdl.setFlightARRAPCode("KNS");
                   
            session.save(landingSlotSchdl);
            tx.commit();
      
            System.out.println("Record inserted successfully in Landing Slot Scheduler");
        } catch (Exception e) {
            System.out.println("xception occured");
            e.printStackTrace();
            tx.rollback();
        }


    }
        private static int showRandomInteger(int aStart, int aEnd, Random aRandom) {
        if (aStart > aEnd) {
            throw new IllegalArgumentException("Start cannot exceed End.");
        }
        //get the range, casting to long to avoid overflow problems
        long range = (long) aEnd - (long) aStart + 1;
        // compute a fraction of the range, 0 <= frac < range
        long fraction = (long) (range * aRandom.nextDouble());
        int randomNumber = (int) (fraction + aStart);
       System.out.println("Generated : " + randomNumber);
        return randomNumber;
    }

    
    
    @Override
    public void execute(JobExecutionContext jec) throws JobExecutionException {
        insertHibernate();
    }
    
    
}
