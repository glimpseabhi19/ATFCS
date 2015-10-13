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
@Table(name="PARAM_TRAN_LOG")
public class Param_Tran_Log implements Serializable {
    
    @Id
    @Column(name="FLIGHTINFOCHECKED")
    private Timestamp flightInfoChecked;
    @Column(name="FLIGHTPLANCHECKED")
    private Timestamp flightPlanChecked;
    @Column(name="LANDINGSLOTCHECKED")
    private Timestamp landingSlotChecked;
    @Column(name="IAFCONFLICTCHECKED")
    private Timestamp iAFConflictChecked;
    @Column(name="FLIGHTINFOCHECK")
    private Timestamp flightInfoCheck;

    public Timestamp getFlightInfoChecked() {
        return flightInfoChecked;
    }

    public void setFlightInfoChecked(Timestamp flightInfoChecked) {
        this.flightInfoChecked = flightInfoChecked;
    }

    public Timestamp getFlightPlanChecked() {
        return flightPlanChecked;
    }

    public void setFlightPlanChecked(Timestamp flightPlanChecked) {
        this.flightPlanChecked = flightPlanChecked;
    }

    public Timestamp getLandingSlotChecked() {
        return landingSlotChecked;
    }

    public void setLandingSlotChecked(Timestamp landingSlotChecked) {
        this.landingSlotChecked = landingSlotChecked;
    }

    public Timestamp getiAFConflictChecked() {
        return iAFConflictChecked;
    }

    public void setiAFConflictChecked(Timestamp iAFConflictChecked) {
        this.iAFConflictChecked = iAFConflictChecked;
    }

    public Timestamp getFlightInfoCheck() {
        return flightInfoCheck;
    }

    public void setFlightInfoCheck(Timestamp flightInfoCheck) {
        this.flightInfoCheck = flightInfoCheck;
    }
    
    
    
    
    
}
