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
@Table(name = "approach_fix_master")
public class Approach_Fix_Master implements Serializable {
    
    @Id
    @Column(name="AIRPORTCODE")
    private String airportCode;
    @Column(name="DEVIATIONCODE")
    private int deviationCode;
    @Column(name="APPROACHFIX_FROM_CODE")
    private String approachFixFromCode;
    @Column(name="APPROACHFIX_TO_CODE")
    private String approachFixToCode;
    @Column(name="DURATION")
    private float duration;
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

    public int getDeviationCode() {
        return deviationCode;
    }

    public void setDeviationCode(int deviationCode) {
        this.deviationCode = deviationCode;
    }

    public String getApproachFixFromCode() {
        return approachFixFromCode;
    }

    public void setApproachFixFromCode(String approachFixFromCode) {
        this.approachFixFromCode = approachFixFromCode;
    }

    public String getApproachFixToCode() {
        return approachFixToCode;
    }

    public void setApproachFixToCode(String approachFixToCode) {
        this.approachFixToCode = approachFixToCode;
    }

    public float getDuration() {
        return duration;
    }

    public void setDuration(float duration) {
        this.duration = duration;
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
