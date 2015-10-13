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


import static com.t8.utility.ListCountry.JDBC_DRIVER;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.text.NumberFormat;
import java.util.Currency;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import org.hibernate.SessionFactory;

public class CurrencySymbol {
     static final String JDBC_DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    static final String DB_URL = "jdbc:sqlserver://localhost:1433;databaseName=SIBS";

    //  Database credentials
    static final String USER = "sa";
    static final String PASS = "adminadmin";
    public static SessionFactory sessionFactory;
    Connection conn = null;
    Statement stmt = null;
    public static void main(String[] args) {
//        CurrencySymbol cs = new CurrencySymbol();
//
//        Map<String, String> currencies = cs.getAvailableCurrencies();
//        for (String country : currencies.keySet()) {
//            String currencyCode = currencies.get(country);
//            
//            System.out.println(country + " => " + currencyCode);
//        }
        CurrencySymbol currencySymbol = new CurrencySymbol();
             currencySymbol.run();
        
         
    }
    
    public void run()
    {
     Locale[] locales = Locale.getAvailableLocales();
         for (Locale locale : locales) {
            try {
               System.out.println(Currency.getInstance(locale).getCurrencyCode()+"<==>"+Currency.getInstance(locale).getDisplayName()+"<==>"+locale.getCountry());
               //System.out.println(locale.getCountry()+" => "+locale.getDisplayCountry() + " => " + Currency.getInstance(locale).getCurrencyCode()+ " => "+Currency.getInstance(locale).getDisplayName());
              Class.forName(JDBC_DRIVER);
                conn = DriverManager.getConnection(DB_URL, USER, PASS);
                stmt = conn.createStatement();
                String query = "insert into currencymaster(CCYCODE,CCYNAME,CTYCODE) values('" + Currency.getInstance(locale).getCurrencyCode() + "','" + Currency.getInstance(locale).getDisplayName() + "','"+locale.getCountry()+"')";
                stmt.executeUpdate(query);

                System.out.println("Record inserted successfully in Currency Master");
                
            } catch (Exception e) {
                // when the locale is not supported
                e.printStackTrace();
            }
        }
    
    }
    

    /**
     * Get the currencies code from the available locales information.
     *
     * @return a map of currencies code.
     */
    private Map<String, String> getAvailableCurrencies() {
        Locale[] locales = Locale.getAvailableLocales();

        //
        // We use TreeMap so that the order of the data in the map sorted
        // based on the country name.
        //
        Map<String, String> currencies = new TreeMap<String, String>();
        for (Locale locale : locales) {
            try {
                currencies.put(locale.getDisplayCountry(),Currency.getInstance(locale).getCurrencyCode());
               Currency.getInstance(locale).getDisplayName(locale);
                
            } catch (Exception e) {
                // when the locale is not supported
            }
        }
        return currencies;
    }
}