/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import com.t8.model.Airport_Flight_Details;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.hibernate.HibernateException;
import org.hibernate.Query;
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
public class InsertScheduler implements Job{

    // JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    static final String DB_URL = "jdbc:sqlserver://localhost:1433;databaseName=SIBS";

    //  Database credentials
    static final String USER = "sa";
    static final String PASS = "adminadmin";
    public int ii = 0;
    int val=1;
   
    public static SessionFactory sessionFactory;

    public static void main(String[] args) {

  // InsertScheduler insertScheduler = new InsertScheduler();
        // insertScheduler.insertQueryHibernate();
   // insertScheduler.insertHibernate();
       //insertScheduler.listFlightDetails();

    }

    public void insertQueryHibernate() {
        sessionFactory = new Configuration().configure("/hibernate.cfg.xml").setInterceptor(new MyInterceptor()).buildSessionFactory();
        //sessionFactory=new Configuration().configure("/hibernate.cfg.xml").buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        String sql = "insert into airport_flt_details(AIRPORTCODE,FLIGHTCODE,FLIGHTDESCRIPTION,FLIGHTDEPAPCODE,FLIGHTARRAPCODE,AIRLINECODE,SCHD_DEP_TIME,SCHD_ARR_TIME,ROUTECODE_D,FLIGHTDURATION,REC_CREATED_BY,REC_CREATED_DATETIME,REC_UPDATE_BY,REC_UPDATED_DATETIME,FLIGHTSTATUS,FLIGHTPROGRESS,FLIGHTDATETIME,FLIGHTTYPE,REFERENCE_NO,ACT_DEP_TIME,EXP_ARR_TIME,ROUTECODE_A,ACT_ARR_TIME) values('BLR','AI403','DELHI BENGALOORU','DEL','BLR','AIC','2014-12-16 09:25:00.000','2014-12-16 01:25:00.000','RC01',180,'R101011','2014-12-16 01:25:00.000','R101011','2014-12-16 01:25:00.000','Arrived','Ontime','2014-12-16 01:25:00.000','Boeing 757','BLR001','2014-12-16 01:25:00.000','2014-12-16 01:25:00.000','RC04','2014-12-16 01:25:00.000')";
        try {

            Query query = session.createSQLQuery(sql);
            int result = query.executeUpdate();
            System.out.println("Rows affected: " + result);
            tx.commit();
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

    public void insertHibernate() {
        sessionFactory = new Configuration().configure("/hibernate.cfg.xml").setInterceptor(new MyInterceptor()).buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
      
        try {

             int START = 1;
        int END = 100;
        Random random = new Random();
        int rand = 0, rand1=0;
       
       // for (int idx = 1; idx <= 9; ++idx) {
             rand = showRandomInteger(START, END, random);
             rand1 = showRandomInteger(START, 9, random);
            //   Airport_Flight_PK flight_PK = new Airport_Flight_PK("BLR", "AI403");
            Airport_Flight_Details air_flt_details = new Airport_Flight_Details();
            air_flt_details.setAirportCode("KNS");
            air_flt_details.setFlightCode("ANA40"+(rand1));
            air_flt_details.setFlightDescription("Narita Kansai");
            air_flt_details.setFlightDEPAPCode("NRT");
            air_flt_details.setFlightARRAPCode("KNS");
            air_flt_details.setAirlineCode("ANA");
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
            air_flt_details.setReference_key("KNS00"+(rand+1));
            air_flt_details.setAct_dep_time(Timestamp.valueOf(dateFormat.format(date)));
            air_flt_details.setExp_arr_time(Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() + rand * 60 * 1000)));
            air_flt_details.setRouteCode_A("RC04");
            air_flt_details.setAct_arr_time(Timestamp.valueOf(dateFormat.format(System.currentTimeMillis() + (rand+5) * 60 * 1000)));

            session.save(air_flt_details);
  //}//for 
            tx.commit();
      
            System.out.println("Record inserted successfully in Airport_FLT_Details");
        } catch (Exception e) {
            System.out.println("xception occured");
            e.printStackTrace();
            tx.rollback();
        }

       
    }

    public void insertJDBC() {
        Connection conn = null;
        Statement stmt = null;
        try {
            //STEP 2: Register JDBC driver
            Class.forName(JDBC_DRIVER);

            //STEP 3: Open a connection
            System.out.println("Connecting to a selected database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            System.out.println("Connected database successfully...");

            //STEP 4: Execute a query
            System.out.println("Inserting records into the table...");
            stmt = conn.createStatement();

            String sql = "insert into [airport-flt-details] values('BLR','AI403','DELHI BENGALOORU','DEL','BLR','AIC','2014-12-16 09:25:00.000','2014-12-16 01:25:00.000','RC01',180,'R101011','2014-12-16 01:25:00.000','R101011','2014-12-16 01:25:00.000','Arrived','Ontime','2014-12-16 01:25:00.000','Boeing 757','BLR001','2014-12-16 01:25:00.000','2014-12-16 01:25:00.000','RC04','2014-12-16 01:25:00.000')";
            stmt.executeUpdate(sql);
            System.out.println("Inserted records into the table [airport-flt-details]...");

        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null) {
                    conn.close();
                }
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try
        System.out.println("Goodbye!");

    }

    public void listFlightDetails() {
        sessionFactory = new Configuration().configure("/hibernate.cfg.xml").setInterceptor(new MyInterceptor()).buildSessionFactory();
        //Transaction tx= null;
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        try {
            List<Airport_Flight_Details> demoEntitities = (List<Airport_Flight_Details>) session.createQuery("from Airport_Flight_Details").list();

            for (Airport_Flight_Details demoEntity : demoEntitities) {
//
//                System.out.println("Flight is " + demoEntity.getFlightCode());
//                 System.out.println("Airline code is " + demoEntity.getAirlineCode());
//                  System.out.println("Flight coming from " + demoEntity.getFlightDEPAPCode());
//                   System.out.println("Flight is " + demoEntity.getFlightProgress());
//                    System.out.println("Flight is going to " + demoEntity.getFlightStatus());
//                     System.out.println("Flight Type is " + demoEntity.getFlightType());
//                     
                 System.out.println("Flight Reference Number is " + demoEntity.getReference_key());
            }

            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

 
    @Override
    public void execute(JobExecutionContext jec) throws JobExecutionException {

                insertHibernate();
    }

}
