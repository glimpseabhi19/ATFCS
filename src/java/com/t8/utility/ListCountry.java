/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

/**
 *
 * @author Earth
 */
import com.t8.model.CountryMaster;
import static com.t8.utility.InsertScheduler.sessionFactory;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Locale;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class ListCountry {

    // JDBC driver name and database URL

    static final String JDBC_DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    static final String DB_URL = "jdbc:sqlserver://localhost:1433;databaseName=SIBS";

    //  Database credentials
    static final String USER = "sa";
    static final String PASS = "adminadmin";
    public static SessionFactory sessionFactory;
    Connection conn = null;
    Statement stmt = null;

    public static void main(String[] args) {

        ListCountry obj = new ListCountry();
        obj.run();

    }

    public void run() {

        String[] locales = Locale.getISOCountries();

        for (String countryCode : locales) {

            Locale obj = new Locale("", countryCode);

            //System.out.println("Country Code = " + obj.getCountry()+ ", Country Name = " + obj.getDisplayCountry());
            // String query = "insert into countrymaster values("+obj.getCountry()+","+obj.getDisplayCountry()+")";
            try {
                Class.forName(JDBC_DRIVER);
                conn = DriverManager.getConnection(DB_URL, USER, PASS);
                stmt = conn.createStatement();
                String query = "insert into countrymaster values('" + obj.getCountry() + "','" + obj.getDisplayCountry() + "')";
                stmt.executeUpdate(query);

                System.out.println("Record inserted successfully in Country Master");
            } catch (Exception e) {
                System.out.println("xception occured");
                e.printStackTrace();

            }
        }

        System.out.println("Done");
    }

}
