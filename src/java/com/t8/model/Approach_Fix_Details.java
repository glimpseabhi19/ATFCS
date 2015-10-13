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
@Table(name = "approach_fix_details")
public class Approach_Fix_Details implements Serializable {
    
    @Column(name="AIRPORTCODE")
    private String airportCode;
    @Column(name="FLIGHTCODE")
    private String flightCode;
    @Column(name="FLIGHTDATETIME")
    private Timestamp dateTime;
    @Id
    @Column(name="FIXSEQNO")
    private int fixSeqNumber;
    @Column(name="APPROACHFIX_FROM_CODE")
    private String approachFixFromCode;
    @Column(name="APPROACHFIX_FROM_TIME")
    private String approachFixFromTime;
    @Column(name="APPROACHFIX_TO_CODE")
    private String approachFixToCode;
    @Column(name="APPROACHFIX_TO_TIME")
    private String approachFixToTime;
    @Column(name="DURATION")
    private float duration;
    @Column(name="REFERENCE_KEY")
    private String referenceKey;
    @Column(name="REC_CREATED_BY")
    private String rec_created_by;
    @Column(name="REC_CREATED_DATETIME")
    private Timestamp rec_created_datetime;
    @Column(name="REC_UPDATED_BY")
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

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public int getFixSeqNumber() {
        return fixSeqNumber;
    }

    public void setFixSeqNumber(int fixSeqNumber) {
        this.fixSeqNumber = fixSeqNumber;
    }

    public String getApproachFixFromCode() {
        return approachFixFromCode;
    }

    public void setApproachFixFromCode(String approachFixFromCode) {
        this.approachFixFromCode = approachFixFromCode;
    }

    public String getApproachFixFromTime() {
        return approachFixFromTime;
    }

    public void setApproachFixFromTime(String approachFixFromTime) {
        this.approachFixFromTime = approachFixFromTime;
    }

    public String getApproachFixToCode() {
        return approachFixToCode;
    }

    public void setApproachFixToCode(String approachFixToCode) {
        this.approachFixToCode = approachFixToCode;
    }

    public String getApproachFixToTime() {
        return approachFixToTime;
    }

    public void setApproachFixToTime(String approachFixToTime) {
        this.approachFixToTime = approachFixToTime;
    }

    public float getDuration() {
        return duration;
    }

    public void setDuration(float duration) {
        this.duration = duration;
    }

    public String getReferenceKey() {
        return referenceKey;
    }

    public void setReferenceKey(String referenceKey) {
        this.referenceKey = referenceKey;
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
