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
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Earth
 */
@Entity
@Table(name="[landingslotmaster]")
public class LandingSlotMaster implements Serializable {
     
     @Column(name="AIRPORTCODE")
    private String airportCode;
     @Id 
    @Column(name="BAYCODE")
    private String bayCode;
    
   // @GeneratedValue(strategy=GenerationType.IDENTITY) 
    @Column(name="ZONECODE")
    private String zoneCode;
    @Column(name="AIRCRAFTTYPE_FIT")
    private String aircraftType_Fit;
    @Column(name="AIRCRAFTMODEL_FIT")
    private String aircraftModel_Fit;
    @Column(name="AVAILABILITY")
    private String availability;
    @Column(name="REASON_FOR_NA")
    private String reason_for_NA;
    @Column(name="AVAILABLE_FROM")
    private Timestamp available_From;
    @Column(name="AVAILABLE_TO")
    private Timestamp available_To;
    @Column(name="AIRLINECODE")
    private String airlineCode;
    @Column(name="MAX_PARK_TIME")
    private float max_Park_Time;
    @Column(name="GENERAL_STATUS_TBD")
    private String general_Status_TBD;
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

    public String getBayCode() {
        return bayCode;
    }

    public void setBayCode(String bayCode) {
        this.bayCode = bayCode;
    }

    public String getZoneCode() {
        return zoneCode;
    }

    public void setZoneCode(String zoneCode) {
        this.zoneCode = zoneCode;
    }

    public String getAircraftType_Fit() {
        return aircraftType_Fit;
    }

    public void setAircraftType_Fit(String aircraftType_Fit) {
        this.aircraftType_Fit = aircraftType_Fit;
    }

    public String getAircraftModel_Fit() {
        return aircraftModel_Fit;
    }

    public void setAircraftModel_Fit(String aircraftModel_Fit) {
        this.aircraftModel_Fit = aircraftModel_Fit;
    }

    public String getAvailability() {
        return availability;
    }

    public void setAvailability(String availability) {
        this.availability = availability;
    }

    public String getReason_for_NA() {
        return reason_for_NA;
    }

    public void setReason_for_NA(String reason_for_NA) {
        this.reason_for_NA = reason_for_NA;
    }

    public Timestamp getAvailable_From() {
        return available_From;
    }

    public void setAvailable_From(Timestamp available_From) {
        this.available_From = available_From;
    }

    public Timestamp getAvailable_To() {
        return available_To;
    }

    public void setAvailable_To(Timestamp available_To) {
        this.available_To = available_To;
    }

    public String getAirlineCode() {
        return airlineCode;
    }

    public void setAirlineCode(String airlineCode) {
        this.airlineCode = airlineCode;
    }

    public float getMax_Park_Time() {
        return max_Park_Time;
    }

    public void setMax_Park_Time(float max_Park_Time) {
        this.max_Park_Time = max_Park_Time;
    }

    public String getGeneral_Status_TBD() {
        return general_Status_TBD;
    }

    public void setGeneral_Status_TBD(String general_Status_TBD) {
        this.general_Status_TBD = general_Status_TBD;
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
