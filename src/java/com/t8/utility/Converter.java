/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.utility;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.net.URL;
import java.net.URLConnection;
import java.util.Currency;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Earth
 */
public class Converter {
    private static final String error = "error:";
  private static final String noErrorFound = "\"\"";
  private static final String regExp = "-?\\d+(.\\d+)?";
 
  private int valueToConvert;
  private String convertFrom, convertTo;
 
  public Converter()
  {}
    public static void main(String[] args) {
        Converter converter = new Converter();
 System.out.println(converter.getConvertedValue(1, "INR","USD"));
 //System.out.println(converter.getConvertedValue(12, Currency.British_Pound.getCurrencyCode(),Currency.US_Dollar.getCurrencyCode()));
    }
  
  public double getConvertedValue(int valueToConvert, String convertFrom, String convertTo)
  {
    try
    {
      this.valueToConvert = valueToConvert;
      this.convertFrom = convertFrom;
      this.convertTo = convertTo;
      String convertedValue = extractConvertedValue(convert());
      if (convertedValue != null && isNumeric(convertedValue))
      {
        BigDecimal roundVal = new BigDecimal(convertedValue);
        roundVal.round(new MathContext(2, RoundingMode.HALF_UP));
        return roundVal.doubleValue();
      }
    }
    catch (Exception ex)
    {
      ex.printStackTrace(System.out);
    }
    return 0d;
  }
  
  private String convert()
  {
    try
    {
      String code = String.valueOf("/ig/calculator?h1=en&q=" + valueToConvert + "" + convertFrom + "=?" + convertTo);
     // URL converterUrl = new URL("https://www.google.com" + code);
       URL converterUrl = new URL("https://www.google.com/finance/converter?a="+ valueToConvert +"&from="+ convertFrom + "&to="+convertTo);
      URLConnection urlConnection = converterUrl.openConnection();
 
      InputStream inputStream = urlConnection.getInputStream();
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
 
      String conversionResult = bufferedReader.readLine();
      bufferedReader.close();
      inputStream.close();
      urlConnection = null;
 
      return conversionResult;
    }
    catch (Exception e)
    {
      e.printStackTrace(System.out);
    }
    return null;
  }
  
  /**If error is found within the response string, throw runtime exception to report, else parse the result for extraction**/
  private String extractConvertedValue(String convertedResult) throws Exception
  {
    String[] convertedResStrings = convertedResult.split(",");
    for (int i = 0; i < convertedResStrings.length; i++)
    {
      if ((convertedResStrings[i].contains(error)) && convertedResStrings[i].split(" ")[1].equals(noErrorFound))
      {
        String convertedValue = extract(convertedResStrings[i - 1]);
        if (!(convertedValue.isEmpty()))
        {
          return convertedValue;
        }
      }
      else if ((convertedResStrings[i].contains(error)) && !convertedResStrings[i].split(" ")[1].equals(noErrorFound))
      {
        throw new RuntimeException("Error occured while converting amount: "+convertedResStrings[i].split(" ")[1]);
      }
    }
    return null;
  }
  private String extract(String str)
  {
    StringBuffer sBuffer = new StringBuffer();
    Pattern p = Pattern.compile(regExp);
    Matcher m = p.matcher(str);
    if (m.find())
    {
      sBuffer.append(m.group());
    }
    return sBuffer.toString();
  }
 
  private boolean isNumeric(String str)
  {
    return str.matches(regExp);
  }
 
 
}
