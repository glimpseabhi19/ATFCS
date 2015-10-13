/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/**
 *
 * @author Earth
 */
public class ConvertTimezone {
    
    public static void main(String[] args) {
//        Calendar calendar = new GregorianCalendar();
//        TimeZone timeZone = calendar.getTimeZone();
//        DateFormat df = new SimpleDateFormat("dd-MM-yy HH:mm:SS z");
//         Date today = new Date();
//         String PST = df.format(today);
//        System.out.println("dispay name: "+ timeZone.getDisplayName());
//        System.out.println("ID name: "+ timeZone.getID());
//        System.out.println("Offset name: "+ timeZone.getOffset( System.currentTimeMillis()) );
//         System.out.println("Current Time : "+PST);
//         System.out.println("hour     = " + calendar.get(Calendar.HOUR_OF_DAY));
//         
//         Calendar calendar1 = new GregorianCalendar();
//         TimeZone timeZone2 = TimeZone.getTimeZone(" America/Los_Angeles");
//         calendar1.setTimeZone(timeZone2);
//           PST = df.format(today);
//         
//          System.out.println("===========================================");
//         System.out.println("dispay name: "+ timeZone2.getDisplayName());
//        System.out.println("ID name: "+ timeZone2.getID());
//        System.out.println("Offset name: "+ timeZone2.getOffset( System.currentTimeMillis()) );
//         System.out.println("Current Time : "+PST);
//         System.out.println("hour     = " + calendar1.get(Calendar.HOUR_OF_DAY));
        
        
        Date today = new Date();
      
        //displaying this date on IST timezone
        DateFormat df = new SimpleDateFormat("dd-MM-yy HH:mm:SS z");
        df.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
        String IST = df.format(today);
        System.out.println("Date in Indian Timezone (IST) : " + IST);
      
        //dispalying date on PST timezone
        df.setTimeZone(TimeZone.getTimeZone("ETC"));
        String PST = df.format(today);
        System.out.println("Date in ETC Timezone : " + PST);
         
    }
    
}
