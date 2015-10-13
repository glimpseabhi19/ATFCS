/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import com.t8.model.LandingSlotMaster;
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
public class InsertLandingSlotMaster implements Job{
    
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
            //   Airport_Flight_PK flight_PK = new Airport_Flight_PK("BLR", "AI403");
            LandingSlotMaster landingSlotMaster = new LandingSlotMaster();
            
            landingSlotMaster.setAirportCode("KNS");
            landingSlotMaster.setBayCode("PB"+rand);
            landingSlotMaster.setZoneCode("");
            landingSlotMaster.setAircraftType_Fit(temp);
            landingSlotMaster.setAircraftModel_Fit(model);
            landingSlotMaster.setAvailability(avail);
            landingSlotMaster.setReason_for_NA("");
            landingSlotMaster.setAvailable_From(Timestamp.valueOf(dateFormat.format(date)));
            landingSlotMaster.setAvailable_To(Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() + rand * 60 * 1000)));
            landingSlotMaster.setAirlineCode("ANA");
            landingSlotMaster.setMax_Park_Time((float) rand);
            landingSlotMaster.setGeneral_Status_TBD("");
            landingSlotMaster.setReference_Key("KNS00"+(rand+1));
            landingSlotMaster.setRec_created_by("R101011");
            landingSlotMaster.setRec_created_datetime(Timestamp.valueOf(dateFormat.format(date)));
            landingSlotMaster.setRec_updated_by("R101011");
            landingSlotMaster.setRec_update_datetime(Timestamp.valueOf(dateFormat.format(date)));
            
      /*      air_flt_details.setFlightCode("AI403");
            air_flt_details.setFlightDescription("DELHI BENGALOORU");
            air_flt_details.setFlightDEPAPCode("DEL");
            air_flt_details.setFlightARRAPCode("BLR");
            air_flt_details.setAirlineCode("AIC");
            air_flt_details.setScheduleDepTime(Timestamp.valueOf(dateFormat.format(date)));
            air_flt_details.setScheduleArrTime(Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() + rand * 60 * 1000)));
            air_flt_details.setRouteCode_D("RC01");
            air_flt_details.setFlightDuration(180);
            air_flt_details.setRec_created_by("R101011");
            air_flt_details.setRec_created_datetime(Timestamp.valueOf(dateFormat.format(date)));
            air_flt_details.setRec_updated_by("R101011");
            air_flt_details.setRec_update_datetime(Timestamp.valueOf(dateFormat.format(date)));
            air_flt_details.setFlightStatus("Arrived");
            air_flt_details.setFlightProgress("Ontime");
            air_flt_details.setFlightDatetime(Timestamp.valueOf(dateFormat.format(date)));
            air_flt_details.setFlightType("Boeing 757");
            air_flt_details.setReference_key("BLR00"+(rand+1));
            air_flt_details.setAct_dep_time(Timestamp.valueOf(dateFormat.format(date)));
            air_flt_details.setExp_arr_time(Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() + rand * 60 * 1000)));
            air_flt_details.setRouteCode_A("RC04");
            air_flt_details.setAct_arr_time(Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() + rand * 60 * 1000)));
*/
            session.save(landingSlotMaster);
            tx.commit();
      
            System.out.println("Record inserted successfully in Landing Slot Master");
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
