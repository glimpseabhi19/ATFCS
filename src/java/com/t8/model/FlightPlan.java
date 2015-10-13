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
@Table(name="FLIGHTPLAN")
public class FlightPlan implements Serializable {
    
    @Column(name="AIRPORTCODE")
    private String airportCode;
    @Id
    @Column(name="FLIGHTCODE")
    private String flightCode;
    @Column(name = "FLIGHTDATETIME")
    private Timestamp flightDateTime;
    @Column(name = "FLIGHTDEPAPCODE")
    private String flightDEPAPCode;
    @Column(name = "FLIGHARRAPCODE")
    private String flightARRAPCode;
    @Column(name = "ROUTECODE")
    private String routeCode;
    @Column(name="[REFERENCE_KEY]")
    private String reference_Key;
    @Column(name="[REC_CREATED_BY]")
    private String rec_created_by;
    @Column(name="[REC_CREATED_DATETIME]")
    private Timestamp rec_created_datetime;
    @Column(name="[REC_UPDATED_BY]")
    private String rec_updated_by;
    @Column(name="REC_UPDATED_DATETIME")
    private Timestamp rec_update_datetime;

    public String getAirportCode() {
        return airportCode;
    }

    public void setAirportCode(String airportCode) {
        this.airportCode = airportCode;
    }

    public String getFlightCode() {
        return flightCode;
    }

    public void setFlightCode(String flightCode) {
        this.flightCode = flightCode;
    }

    public Timestamp getFlightDateTime() {
        return flightDateTime;
    }

    public void setFlightDateTime(Timestamp flightDateTime) {
        this.flightDateTime = flightDateTime;
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

    public String getRouteCode() {
        return routeCode;
    }

    public void setRouteCode(String routeCode) {
        this.routeCode = routeCode;
    }

    public String getReference_Key() {
        return reference_Key;
    }

    public void setReference_Key(String reference_Key) {
        this.reference_Key = reference_Key;
    }

    public String getRec_created_by() {
        return rec_created_by;
    }

    public void setRec_created_by(String rec_created_by) {
        this.rec_created_by = rec_created_by;
    }

    public Timestamp getRec_created_datetime() {
        return rec_created_datetime;
    }

    public void setRec_created_datetime(Timestamp rec_created_datetime) {
        this.rec_created_datetime = rec_created_datetime;
    }

    public String getRec_updated_by() {
        return rec_updated_by;
    }

    public void setRec_updated_by(String rec_updated_by) {
        this.rec_updated_by = rec_updated_by;
    }

    public Timestamp getRec_update_datetime() {
        return rec_update_datetime;
    }

    public void setRec_update_datetime(Timestamp rec_update_datetime) {
        this.rec_update_datetime = rec_update_datetime;
    }
    
    
    
}
