/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.model;

import java.io.Serializable;
import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Earth
 */
@Entity
@Table(name = "landing_slot_schdl")
public class Landing_Slot_Schdl implements Serializable {

    @Id
    @Column(name = "AIRPORTCODE")
    private String airportCode;
    @Column(name = "PARKINGSLOTNO")
    private String parkingSlotNumber;
    @Column(name = "BAYCODE")
    private String bayCode;
    @Column(name = "DATE_TIME_LOGGED")
    private Timestamp dateTimeLogged;
    @Column(name = "SEQNO")
    private int seqNo;
    @Column(name = "RUNWAYCODE")
    private String runWayCode;
    @Column(name = "AIRLINECODE")
    private String airlineCode;
    @Column(name = "FLIGHTCODE")
    private String flightCode;
    @Column(name = "FLIGHT_EXP_ARRIVAL_TIME")
    private Timestamp flightExpArrivalTime;
    @Column(name = "FLIGHT_ACT_ARRIVAL_TIME")
    private Timestamp flightActArrivalTime;
    @Column(name = "SLOT_BOOKED_FROM_TIME")
    private Timestamp slotBookedFromTime;
    @Column(name = "SLOT_BOOKED_TO_TIME")
    private Timestamp slotBookedToTime;
    @Column(name = "SLOT_FREE_EXP_TIME")
    private Timestamp slotFreeExpTime;
    @Column(name = "SLOT_FREE_ACT_TIME")
    private Timestamp slotFreeActTime;
    @Column(name = "FLIGHTDEPAPCODE")
    private String flightDEPAPCode;
    @Column(name = "FLIGHARRAPCODE")
    private String flightARRAPCode;

    public String getAirportCode() {
        return airportCode;
    }

    public void setAirportCode(String airportCode) {
        this.airportCode = airportCode;
    }

    public String getParkingSlotNumber() {
        return parkingSlotNumber;
    }

    public void setParkingSlotNumber(String parkingSlotNumber) {
        this.parkingSlotNumber = parkingSlotNumber;
    }

    public String getBayCode() {
        return bayCode;
    }

    public void setBayCode(String bayCode) {
        this.bayCode = bayCode;
    }

    public Timestamp getDateTimeLogged() {
        return dateTimeLogged;
    }

    public void setDateTimeLogged(Timestamp dateTimeLogged) {
        this.dateTimeLogged = dateTimeLogged;
    }

    public int getSeqNo() {
        return seqNo;
    }

    public void setSeqNo(int seqNo) {
        this.seqNo = seqNo;
    }

    public String getRunWayCode() {
        return runWayCode;
    }

    public void setRunWayCode(String runWayCode) {
        this.runWayCode = runWayCode;
    }

    public String getAirlineCode() {
        return airlineCode;
    }

    public void setAirlineCode(String airlineCode) {
        this.airlineCode = airlineCode;
    }

    public String getFlightCode() {
        return flightCode;
    }

    public void setFlightCode(String flightCode) {
        this.flightCode = flightCode;
    }

    public Timestamp getFlightExpArrivalTime() {
        return flightExpArrivalTime;
    }

    public void setFlightExpArrivalTime(Timestamp flightExpArrivalTime) {
        this.flightExpArrivalTime = flightExpArrivalTime;
    }

    public Timestamp getFlightActArrivalTime() {
        return flightActArrivalTime;
    }

    public void setFlightActArrivalTime(Timestamp flightActArrivalTime) {
        this.flightActArrivalTime = flightActArrivalTime;
    }

    public Timestamp getSlotBookedFromTime() {
        return slotBookedFromTime;
    }

    public void setSlotBookedFromTime(Timestamp slotBookedFromTime) {
        this.slotBookedFromTime = slotBookedFromTime;
    }

    public Timestamp getSlotBookedToTime() {
        return slotBookedToTime;
    }

    public void setSlotBookedToTime(Timestamp slotBookedToTime) {
        this.slotBookedToTime = slotBookedToTime;
    }

    public Timestamp getSlotFreeExpTime() {
        return slotFreeExpTime;
    }

    public void setSlotFreeExpTime(Timestamp slotFreeExpTime) {
        this.slotFreeExpTime = slotFreeExpTime;
    }

    public Timestamp getSlotFreeActTime() {
        return slotFreeActTime;
    }

    public void setSlotFreeActTime(Timestamp slotFreeActTime) {
        this.slotFreeActTime = slotFreeActTime;
    }

    public String getFlightDEPAPCode() {
        return flightDEPAPCode;
    }

    public void setFlightDEPAPCode(String flightDEPAPCode) {
        this.flightDEPAPCode = flightDEPAPCode;
    }

    public String getFlightARRAPCode() {
        return flightARRAPCode;
    }

    public void setFlightARRAPCode(String flightARRAPCode) {
        this.flightARRAPCode = flightARRAPCode;
    }
    
    
    

}
