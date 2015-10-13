/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import java.util.Date;
import java.util.List;
import org.quartz.CronScheduleBuilder;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;
import org.quartz.impl.matchers.GroupMatcher;

/**
 *
 * @author Earth
 */
public class SchedulerMaster {
  public static void main(String[] args) throws Exception {
        
        JobKey jobKeyA = new JobKey("jobA","group1");
        JobDetail jobA=JobBuilder.newJob(InsertScheduler.class).withIdentity(jobKeyA).build();
        
        JobKey jobKeyB = new JobKey("jobB","group1");
        JobDetail jobB=JobBuilder.newJob(InsertLandingSlotMaster.class).withIdentity(jobKeyB).build();
        
        JobKey jobKeyC = new JobKey("jobC","group1");
        JobDetail jobC=JobBuilder.newJob(InsertLandingSlotSchdl.class).withIdentity(jobKeyC).build();
        
        JobKey jobKeyD = new JobKey("jobD","group1");
        JobDetail jobD=JobBuilder.newJob(RegisterFlightPlan.class).withIdentity(jobKeyD).build();
        
        Trigger trigger1=TriggerBuilder.newTrigger().withIdentity("dummyTrigger1","group1").withSchedule(CronScheduleBuilder.cronSchedule("0/120 * * * * ?")).build();
        Trigger trigger2=TriggerBuilder.newTrigger().withIdentity("dummyTrigger2","group1").withSchedule(CronScheduleBuilder.cronSchedule("0/120 * * * * ?")).build();
       Trigger trigger3=TriggerBuilder.newTrigger().withIdentity("dummyTrigger3","group1").withSchedule(CronScheduleBuilder.cronSchedule("0/120 * * * * ?")).build();
       Trigger trigger4=TriggerBuilder.newTrigger().withIdentity("dummyTrigger4","group1").withSchedule(CronScheduleBuilder.cronSchedule("0/120 * * * * ?")).build();
        
        Scheduler scheduler = new StdSchedulerFactory().getScheduler();
        
        scheduler.start();
        scheduler.scheduleJob(jobA, trigger1);
        scheduler.scheduleJob(jobB, trigger2);
        scheduler.scheduleJob(jobC, trigger3);
        scheduler.scheduleJob(jobD, trigger4);
        System.out.println("Start at every 120 secs..");
       // listAllJobScheduler() ;
    }
  
  public void scheduler() throws SchedulerException
  {
  JobKey jobKeyA = new JobKey("jobA","group1");
        JobDetail jobA=JobBuilder.newJob(InsertScheduler.class).withIdentity(jobKeyA).build();
        
        JobKey jobKeyB = new JobKey("jobB","group1");
        JobDetail jobB=JobBuilder.newJob(InsertLandingSlotMaster.class).withIdentity(jobKeyB).build();
        
        JobKey jobKeyC = new JobKey("jobC","group1");
        JobDetail jobC=JobBuilder.newJob(InsertLandingSlotSchdl.class).withIdentity(jobKeyC).build();
        
        JobKey jobKeyD = new JobKey("jobD","group1");
        JobDetail jobD=JobBuilder.newJob(RegisterFlightPlan.class).withIdentity(jobKeyD).build();
        
        Trigger trigger1=TriggerBuilder.newTrigger().withIdentity("dummyTrigger1","group1").withSchedule(CronScheduleBuilder.cronSchedule("0/60 * * * * ?")).build();
          Trigger trigger2=TriggerBuilder.newTrigger().withIdentity("dummyTrigger2","group1").withSchedule(CronScheduleBuilder.cronSchedule("0/60 * * * * ?")).build();
        Trigger trigger3=TriggerBuilder.newTrigger().withIdentity("dummyTrigger3","group1").withSchedule(CronScheduleBuilder.cronSchedule("0/60 * * * * ?")).build();
        Trigger trigger4=TriggerBuilder.newTrigger().withIdentity("dummyTrigger4","group1").withSchedule(CronScheduleBuilder.cronSchedule("0/60 * * * * ?")).build();
        
        Scheduler scheduler = new StdSchedulerFactory().getScheduler();
        
        scheduler.start();
        scheduler.scheduleJob(jobA, trigger1);
        scheduler.scheduleJob(jobB, trigger2);
       scheduler.scheduleJob(jobC, trigger3);
       scheduler.scheduleJob(jobD, trigger4);
        System.out.println("Start at every 10 secs..");
       // listAllJobScheduler() ;
  
  }
  
    
    public static void listAllJobScheduler() throws SchedulerException
    {
     Scheduler scheduler= new StdSchedulerFactory().getScheduler();
        
        for (String groupName : scheduler.getJobGroupNames())
        {
        for(JobKey jobKey : scheduler.getJobKeys(GroupMatcher.jobGroupEquals(groupName)))
        {
        
            String jobName=jobKey.getName();
            String jobGroup = jobKey.getGroup();
            
            //Get Job Trigger
            List<Trigger> triggers =  (List<Trigger>)scheduler.getTriggersOfJob(jobKey);
            Date nxtFireTime = triggers.get(0).getNextFireTime();
            
            System.out.println("[Job Name] :" + jobName + "[Group Name]: "+ jobGroup +" - "+nxtFireTime);
        }
        
            
        }
    }
    
}
