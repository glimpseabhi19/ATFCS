/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import java.text.NumberFormat;
import java.util.Locale;

/**
 *
 * @author Earth
 */
public class TestCurrency {
    
    public static void main(String[] args) {
        double price = 100.25; 
        showPriceInUSD(price, getExchangeRate("USD"));
        showPriceInRS(price, getExchangeRate("INR"));
        showPriceInGBP(price, getExchangeRate("GBP")); 
    
       
//Read more: http://javarevisited.blogspot.com/2014/02/how-to-format-and-display-number-to.html#ixzz3W2WsTsN0
    }
    
    /** * Display price in US Dollar currency * * @param price * @param rate */

    public static void showPriceInUSD(double price, double rate)
    {
        double priceInUSD = price * rate; 
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(Locale.US); 
        System.out.printf("Price in USD : %s %n", currencyFormat.format(priceInUSD));
    }
    
    /** * Display price in US Dollar currency * * @param price * @param rate */

    public static void showPriceInRS(double price, double rate)
    {
        double priceInUSD = price * rate; 
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(Locale.getDefault()); 
        System.out.printf("Price in INR : %s %n", currencyFormat.format(priceInUSD));
    }
    
    /** * Display prince in British Pound * * @param price * @param rate */ 
    public static void showPriceInGBP(double price, double rate)
    {
        double princeInGBP = price * rate;
        NumberFormat GBP = NumberFormat.getCurrencyInstance(Locale.UK);
        System.out.printf("Price in GBP : %s %n", GBP.format(princeInGBP));
    } 
/** * Display prince in Japanese Yen * * @param price * @param rate */ 
    public static void showPriceInJPY(double price, double rate)
    {
        double princeInJPY = price * rate; 
        NumberFormat currency = NumberFormat.getCurrencyInstance(Locale.JAPAN);
        System.out.printf("Price in JPY : %s %n", currency.format(princeInJPY));
    }
    /** * @return FX exchange rate for USD * @param currency */ 
    public static double getExchangeRate(String currency) 
    {
        switch (currency)
        {
            case "USD": return 0.01605; 
            case "INR": return 1; 
            case "JPY": return 102.53; 
            case "GBP": return 0.01082; 
            case "EURO": return 0.01492; 
            default: throw new IllegalArgumentException(String.format("No rates available for currency %s %n", currency)); 
        }
    }
    
    
    //https://www.google.com/finance/converter?a=3&from=INR&to=USD

}
