/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import static java.lang.Thread.sleep;

/**
 *
 * @author Earth
 */
public class LoopControl {
    
    //from http://blog.ajduke.in/2014/03/31/java-how-to-schedule-a-task-to-run-in-an-interval/
        
        public static void main(String[] args) {
  // run in a second
  final long timeInterval = 2000;
  Runnable runnable;
  runnable= new Runnable() {
  
  public void run() {
    while (true) {
      // ------- code for task to run
      System.out.println("Hello !!");
      // ------- ends here
      try {
       Thread.sleep(timeInterval);
      } catch (InterruptedException e) {
        e.printStackTrace();
      }
      }
    }
  };
  
  Thread thread = new Thread(runnable);
  thread.start();
  
        
 }
        
  
    
    
    
}
