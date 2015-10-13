/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Earth
 */
@Entity
@Table(name="flightmaster")
public class FlightMaster implements Serializable{
    @Id
    @Column(name="FLIGHTCODE")
    private String flightCode;
    @Column(name="FLIGHTDESCRIPTION")
    private String flightDescription;
    @Column(name="AIRLINECODE")
    private String airlineCode;

    public String getFlightCode() {
        return flightCode;
    }

    public void setFlightCode(String flightCode) {
        this.flightCode = flightCode;
    }

    public String getFlightDescription() {
        return flightDescription;
    }

    public void setFlightDescription(String flightDescription) {
        this.flightDescription = flightDescription;
    }

    public String getAirlineCode() {
        return airlineCode;
    }

    public void setAirlineCode(String airlineCode) {
        this.airlineCode = airlineCode;
    }
    
    
    
    
}
