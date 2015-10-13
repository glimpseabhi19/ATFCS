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
@Table(name="RouteMaster")
public class RouteMaster implements Serializable {
    
    @Id
    @Column(name="ROUTECODE")
    private String routeCode;
    @Column(name="WAYPOINTFROM")
    private String waypointFrom;
    @Column(name="WAYPOINTTO")
    private String waypointTo;
    @Column(name="ROUTEDURATION")
    private float routeDuration;
    @Column(name="ROUTESEQNO")
    private int routeSeqNo;

    public String getRouteCode() {
        return routeCode;
    }

    public void setRouteCode(String routeCode) {
        this.routeCode = routeCode;
    }

    public String getWaypointFrom() {
        return waypointFrom;
    }

    public void setWaypointFrom(String waypointFrom) {
        this.waypointFrom = waypointFrom;
    }

    public String getWaypointTo() {
        return waypointTo;
    }

    public void setWaypointTo(String waypointTo) {
        this.waypointTo = waypointTo;
    }

    public float getRouteDuration() {
        return routeDuration;
    }

    public void setRouteDuration(float routeDuration) {
        this.routeDuration = routeDuration;
    }

    public int getRouteSeqNo() {
        return routeSeqNo;
    }

    public void setRouteSeqNo(int routeSeqNo) {
        this.routeSeqNo = routeSeqNo;
    }
    
    
    
}
