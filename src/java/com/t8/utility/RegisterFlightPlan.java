/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import com.t8.model.Airport_Flight_Details;
import com.t8.model.FlightPlan;
import com.t8.model.FlightPlanLog;
import com.t8.model.Param_Tran_Log;
import com.t8.model.RouteMaster;
import static com.t8.utility.InsertScheduler.sessionFactory;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 *
 * @author Earth
 */
public class RegisterFlightPlan implements Job{
    
    
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
        public void insertHibernate() {
        sessionFactory = new Configuration().configure("/hibernate.cfg.xml").setInterceptor(new MyInterceptor()).buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
      FlightPlan flightPlan = new FlightPlan();
      FlightPlanLog flightPlanLog = new FlightPlanLog();
      Param_Tran_Log param_tran_log = new Param_Tran_Log();
      String from = "",to = ""; int seq=0;
        try {

             int START = 1;
        int END = 100;
        Random random = new Random();
        int rand = 0;
       // for (int idx = 1; idx <= 9; ++idx) {
             rand = showRandomInteger(START, END, random);
             
             
             

         List  listDetails= session.createQuery("FROM Airport_Flight_Details").list(); 
         for (Iterator iterator = listDetails.iterator(); iterator.hasNext();)
         {
            Airport_Flight_Details airport_flt_details = (Airport_Flight_Details) iterator.next(); 
            System.out.println("Airline Code: " + airport_flt_details.getAirlineCode()); 
            System.out.println("  Flight Code: " + airport_flt_details.getFlightCode()); 
            System.out.println("  Flight Status: " + airport_flt_details.getFlightProgress()); 
            System.out.println("  Route Code: " + airport_flt_details.getRouteCode_A());
            
            Criteria criteria = session.createCriteria(RouteMaster.class);
            criteria.add(Restrictions.eq("routeCode", airport_flt_details.getRouteCode_A().trim()));
            List route = criteria.list();
            for (Iterator iterator1 = route.iterator(); iterator1.hasNext();)
         {
             RouteMaster routeMaster = (RouteMaster) iterator1.next();
             seq = routeMaster.getRouteSeqNo();
             from = routeMaster.getWaypointFrom();
             to= routeMaster.getWaypointTo();
                System.out.println("Route found:");
                System.out.println(routeMaster.getRouteCode() + " - " + routeMaster.getRouteSeqNo());
                System.out.println("WAY POINT "+routeMaster.getWaypointFrom()+" : "+routeMaster.getWaypointTo());
            }
       
//            RouteMaster routeMaster = (RouteMaster) criteria.list();//uniqueResult();            
//            if (routeMaster!=null) {
//                System.out.println("Route found:");
//                System.out.println(routeMaster.getRouteCode() + " - " + routeMaster.getRouteSeqNo());
//            }
            
            flightPlan.setAirportCode(airport_flt_details.getAirportCode());
            flightPlan.setFlightCode(airport_flt_details.getFlightCode());
            flightPlan.setFlightDateTime(airport_flt_details.getFlightDatetime());
            flightPlan.setFlightDEPAPCode(airport_flt_details.getFlightDEPAPCode());
            flightPlan.setFlightARRAPCode(airport_flt_details.getFlightARRAPCode());
            flightPlan.setRouteCode(airport_flt_details.getRouteCode_A());
            flightPlan.setRec_created_by(airport_flt_details.getRec_created_by());
            flightPlan.setRec_created_datetime(airport_flt_details.getRec_created_datetime());
            flightPlan.setRec_updated_by(airport_flt_details.getRec_updated_by());
            flightPlan.setRec_update_datetime(airport_flt_details.getRec_update_datetime());
            flightPlan.setReference_Key(airport_flt_details.getReference_key());
            
            flightPlanLog.setAirportCode(airport_flt_details.getAirportCode());
            flightPlanLog.setFlightCode(airport_flt_details.getFlightCode());
            flightPlanLog.setFlightDateTime(airport_flt_details.getFlightDatetime());
            flightPlanLog.setRouteCode(airport_flt_details.getRouteCode_A());
            flightPlanLog.setRouteSeqNo(seq);
            flightPlanLog.setWaypointFromCode(from);
            flightPlanLog.setWaypointFromTime(Timestamp.valueOf(dateFormat.format(date)));
            flightPlanLog.setWaypointToCode(to);
            flightPlanLog.setWaypointToTime(Timestamp.valueOf(dateFormat.format(date)));
            flightPlanLog.setWaypointDuration(rand);
            flightPlanLog.setWaypointDistance(rand);
            flightPlanLog.setReference_Key(airport_flt_details.getReference_key());
            flightPlanLog.setRec_created_by(airport_flt_details.getRec_created_by());
            flightPlanLog.setRec_created_datetime(airport_flt_details.getRec_created_datetime());
            flightPlanLog.setRec_updated_by(airport_flt_details.getRec_updated_by());
            flightPlanLog.setRec_update_datetime(airport_flt_details.getRec_update_datetime());
            
            param_tran_log.setFlightInfoCheck(Timestamp.valueOf(dateFormat.format(date)));
            param_tran_log.setFlightPlanChecked(Timestamp.valueOf(dateFormat.format(date)));
            param_tran_log.setLandingSlotChecked(Timestamp.valueOf(dateFormat.format(date)));
            param_tran_log.setiAFConflictChecked(Timestamp.valueOf(dateFormat.format(date)));
            param_tran_log.setFlightInfoChecked(Timestamp.valueOf(dateFormat.format(date)));
                        
            session.save(flightPlan);
            session.save(flightPlanLog);
             session.save(param_tran_log);
            
             tx.commit();
            
         }
             
          
      
            System.out.println("Record inserted successfully in Flight Plan and Flight Plan Log");
        } catch (Exception e) {
            System.out.println("xception occured");
            e.printStackTrace();
            tx.rollback();
        }

    }
    
    

    @Override
    public void execute(JobExecutionContext jec) throws JobExecutionException {
        
    insertHibernate();
    }
    
}
