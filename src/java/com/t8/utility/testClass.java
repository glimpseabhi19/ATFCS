/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 *
 * @author Earth
 */
public class testClass implements  Job{

    public static void main(String[] args) {
       // testClass test = new  testClass();
        //2014-12-16 09:25:00.000
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        //System.out.println(dateFormat.format(date)); 
       //System.out.println(dateFormat.format(System.currentTimeMillis()+5*60*1000));

        int START = 1;
        int END = 6;
        Random random = new Random();
        int rand = 0;
        for (int idx = 1; idx <= 9; ++idx) {
            rand = showRandomInteger(START, END, random);
            String currentDate = dateFormat.format(date).toString();
            String laterTime= dateFormat.format(System.currentTimeMillis() + rand * 60 * 1000).toString();
            System.out.println(currentDate);
            System.out.println(laterTime);
            System.out.println("-----------------------");

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
        int START = 1;
        int END = 6;
        Random random = new Random();
        int rand = 0;
     showRandomInteger(START, END, random);
    }
    
    
    
}
