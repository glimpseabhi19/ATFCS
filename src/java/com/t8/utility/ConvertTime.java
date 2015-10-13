/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/**
 *
 * @author Earth
 */
public class ConvertTime {
    
    public static void main(String[] args) {
    Calendar localTime = Calendar.getInstance();
    localTime.set(Calendar.HOUR, 17);
    localTime.set(Calendar.MINUTE, 15);
    localTime.set(Calendar.SECOND, 20);

    int hour = localTime.get(Calendar.HOUR);
    int minute = localTime.get(Calendar.MINUTE);
    int second = localTime.get(Calendar.SECOND);

    System.out.printf("Local time  : %02d:%02d:%02d\n", hour, minute, second);

    Calendar germanyTime = new GregorianCalendar(TimeZone.getTimeZone("UAE"));
    germanyTime.setTimeInMillis(localTime.getTimeInMillis());
    hour = germanyTime.get(Calendar.HOUR);
    minute = germanyTime.get(Calendar.MINUTE);
    second = germanyTime.get(Calendar.SECOND);

    System.out.printf("UAE time: %02d:%02d:%02d\n", hour, minute, second);
  }
    
}
