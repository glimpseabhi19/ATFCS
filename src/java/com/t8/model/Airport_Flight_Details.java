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
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Earth
 */
@Entity
@Table(name="[airport_flt_details]")
public class Airport_Flight_Details implements Serializable {
    
 ///@Id
//private Airport_Flight_PK airportflightPK;
    
    @Column(name="AIRPORTCODE")
    private String airportCode;
    @Column(name="FLIGHTCODE")
    private String flightCode;
    @Column(name="FLIGHTDESCRIPTION")
    private String flightDescription;
    @Column(name="[FLIGHTDEPAPCODE]")
    private String flightDEPAPCode;
    @Column(name="[FLIGHTARRAPCODE]")
    private String flightARRAPCode;
    @Column(name="[AIRLINECODE]")
    private String airlineCode;
    @Column(name="[SCHD_DEP_TIME]")
    private Timestamp scheduleDepTime;
    @Column(name="[SCHD_ARR_TIME]")
    private Timestamp scheduleArrTime;
    @Column(name="[ROUTECODE_D]")
    private String routeCode_D;
    @Column(name="[FLIGHTDURATION]")
    private float flightDuration;
    @Column(name="[REC_CREATED_BY]")
    private String rec_created_by;
    @Column(name="[REC_CREATED_DATETIME]")
    private Timestamp rec_created_datetime;
    @Column(name="[REC_UPDATE_BY]")
    private String rec_updated_by;
    @Column(name="REC_UPDATED_DATETIME")
    private Timestamp rec_update_datetime;
    @Column(name="[FLIGHTSTATUS]")
    private String flightStatus;
    @Column(name="[FLIGHTPROGRESS]")
    private String flightProgress;
    @Column(name="[FLIGHTDATETIME]")
    private Timestamp flightDatetime;
    @Column(name="[FLIGHTTYPE]")
    private String flightType;
    @Id
    @Column(name="[REFERENCE_ KEY]")
    private String reference_key;
    @Column(name="[ACT_DEP_TIME]")
    private Timestamp act_dep_time;
    @Column(name="[EXP_ARR_TIME]")
    private Timestamp exp_arr_time;
    @Column(name="[ROUTECODE_A]")
    private String routeCode_A;
    @Column(name="[ACT_ARR_TIME]")
    private Timestamp act_arr_time;

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

   
//    public Airport_Flight_PK getAirportflightPK() {
//        return airportflightPK;
//    }
//
//    public void setAirportflightPK(Airport_Flight_PK airportflightPK) {
//        this.airportflightPK = airportflightPK;
//    }

    public String getFlightDescription() {
        return flightDescription;
    }

    public void setFlightDescription(String flightDescription) {
        this.flightDescription = flightDescription;
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

    public String getAirlineCode() {
        return airlineCode;
    }

    public void setAirlineCode(String airlineCode) {
        this.airlineCode = airlineCode;
    }

    public Timestamp getScheduleDepTime() {
        return scheduleDepTime;
    }

    public void setScheduleDepTime(Timestamp scheduleDepTime) {
        this.scheduleDepTime = scheduleDepTime;
    }

    public Timestamp getScheduleArrTime() {
        return scheduleArrTime;
    }

    public void setScheduleArrTime(Timestamp scheduleArrTime) {
        this.scheduleArrTime = scheduleArrTime;
    }

    public String getRouteCode_D() {
        return routeCode_D;
    }

    public void setRouteCode_D(String routeCode_D) {
        this.routeCode_D = routeCode_D;
    }

    public float getFlightDuration() {
        return flightDuration;
    }

    public void setFlightDuration(float flightDuration) {
        this.flightDuration = flightDuration;
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

    public String getFlightStatus() {
        return flightStatus;
    }

    public void setFlightStatus(String flightStatus) {
        this.flightStatus = flightStatus;
    }

    public String getFlightProgress() {
        return flightProgress;
    }

    public void setFlightProgress(String flightProgress) {
        this.flightProgress = flightProgress;
    }

    public Timestamp getFlightDatetime() {
        return flightDatetime;
    }

    public void setFlightDatetime(Timestamp flightDatetime) {
        this.flightDatetime = flightDatetime;
    }

    public String getFlightType() {
        return flightType;
    }

    public void setFlightType(String flightType) {
        this.flightType = flightType;
    }

    public String getReference_key() {
        return reference_key;
    }

    public void setReference_key(String reference_key) {
        this.reference_key = reference_key;
    }

    public Timestamp getAct_dep_time() {
        return act_dep_time;
    }

    public void setAct_dep_time(Timestamp act_dep_time) {
        this.act_dep_time = act_dep_time;
    }

    public Timestamp getExp_arr_time() {
        return exp_arr_time;
    }

    public void setExp_arr_time(Timestamp exp_arr_time) {
        this.exp_arr_time = exp_arr_time;
    }

    public String getRouteCode_A() {
        return routeCode_A;
    }

    public void setRouteCode_A(String routeCode_A) {
        this.routeCode_A = routeCode_A;
    }

    public Timestamp getAct_arr_time() {
        return act_arr_time;
    }

    public void setAct_arr_time(Timestamp act_arr_time) {
        this.act_arr_time = act_arr_time;
    }
    
    
	
        
}
