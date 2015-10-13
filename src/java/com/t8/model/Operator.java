/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.model;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Earth
 */
@Entity
@Table(name="operatormaster")
public class Operator {
    
        @Id
	@GeneratedValue
	private Integer operatorId;
        private String operatorName;
        private byte operatorEnabled;
        private String defaultAP;
        private String encryptedPassword;
        private byte resetFlag;
        private Date passwordExpiryTime;
        private int failedLoginCount;
        private byte deleted;
        private Date createDate;

    public Integer getOperatorId() {
        return operatorId;
    }

    public void setOperatorId(Integer operatorId) {
        this.operatorId = operatorId;
    }

    public String getOperatorName() {
        return operatorName;
    }

    public void setOperatorName(String operatorName) {
        this.operatorName = operatorName;
    }

    public byte getOperatorEnabled() {
        return operatorEnabled;
    }

    public void setOperatorEnabled(byte operatorEnabled) {
        this.operatorEnabled = operatorEnabled;
    }

    public String getDefaultAP() {
        return defaultAP;
    }

    public void setDefaultAP(String defaultAP) {
        this.defaultAP = defaultAP;
    }

    public String getEncryptedPassword() {
        return encryptedPassword;
    }

    public void setEncryptedPassword(String encryptedPassword) {
        this.encryptedPassword = encryptedPassword;
    }

    public byte getResetFlag() {
        return resetFlag;
    }

    public void setResetFlag(byte resetFlag) {
        this.resetFlag = resetFlag;
    }

    public Date getPasswordExpiryTime() {
        return passwordExpiryTime;
    }

    public void setPasswordExpiryTime(Date passwordExpiryTime) {
        this.passwordExpiryTime = passwordExpiryTime;
    }

    public int getFailedLoginCount() {
        return failedLoginCount;
    }

    public void setFailedLoginCount(int failedLoginCount) {
        this.failedLoginCount = failedLoginCount;
    }

    public byte getDeleted() {
        return deleted;
    }

    public void setDeleted(byte deleted) {
        this.deleted = deleted;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
        
        
        
}
