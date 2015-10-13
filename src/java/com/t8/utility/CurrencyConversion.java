/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import com.tunyk.currencyconverter.BankUaCom;
import com.tunyk.currencyconverter.api.Currency;
import com.tunyk.currencyconverter.api.CurrencyConverter;
import com.tunyk.currencyconverter.api.CurrencyConverterException;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

/**
 *
 * @author Earth
 */
public class CurrencyConversion {

    public static void main(String[] args) {
        CurrencyConversion currencyConversion = new CurrencyConversion();
        //Using Yahoo Finance API
        System.out.println(findExchangeRateAndConvertYahoo("USD", "INR", 1));
        //Using Google API
        //System.out.println(findExchangeRateAndConvertGoogle("INR", "USD", 1));
       
    }

    private static Double findExchangeRateAndConvertYahoo(String from, String to, int amount) {
        try {
            //Yahoo Finance API
            URL url = new URL("http://finance.yahoo.com/d/quotes.csv?f=l1&s=" + from + to + "=X");
            BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
            String line = reader.readLine();
            if (line.length() > 0) {
                return Double.parseDouble(line) * amount;
            }
            reader.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    private static Double findExchangeRateAndConvertGoogle(String from, String to, int amount) {
        try {
            //Google Finance API
            //https://www.google.com/finance/converter?a=3&from=INR&to=USD

            URL url = new URL("https://www.google.com/finance/converter?a=" + amount + "&from=" + from + "&to=" + to);
            //System.out.println("URL is: "+url);
            BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
            String line = reader.readLine();
            if (line.length() > 0) {
                return Double.parseDouble(line) * amount;
            }
            reader.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    
}
