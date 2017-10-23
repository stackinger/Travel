package com.travel.model;

import java.util.Date;

public class TravelConstant {
    private Integer id;

    private String constantId;

    private String constantFlg;

    private String constantVal;

    private String delFlg;

    private String createId;

    private Date createTime;

    private String updateId;

    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getConstantId() {
        return constantId;
    }

    public void setConstantId(String constantId) {
        this.constantId = constantId == null ? null : constantId.trim();
    }

    public String getConstantFlg() {
        return constantFlg;
    }

    public void setConstantFlg(String constantFlg) {
        this.constantFlg = constantFlg == null ? null : constantFlg.trim();
    }

    public String getConstantVal() {
        return constantVal;
    }

    public void setConstantVal(String constantVal) {
        this.constantVal = constantVal == null ? null : constantVal.trim();
    }

    public String getDelFlg() {
        return delFlg;
    }

    public void setDelFlg(String delFlg) {
        this.delFlg = delFlg == null ? null : delFlg.trim();
    }

    public String getCreateId() {
        return createId;
    }

    public void setCreateId(String createId) {
        this.createId = createId == null ? null : createId.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdateId() {
        return updateId;
    }

    public void setUpdateId(String updateId) {
        this.updateId = updateId == null ? null : updateId.trim();
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}