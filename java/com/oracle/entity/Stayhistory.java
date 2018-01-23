package com.oracle.entity;

import java.util.Date;

public class Stayhistory {
    int shid;//记录序号
    int sbid;//病床好
    int pbid;//病人号
    String pbname;//病人号
    int srid;//病房号
    Date shdate;

    public int getShid() {
        return shid;
    }

    public void setShid(int shid) {
        this.shid = shid;
    }

    public int getSbid() {
        return sbid;
    }

    public void setSbid(int sbid) {
        this.sbid = sbid;
    }

    public int getPbid() {
        return pbid;
    }

    public void setPbid(int pbid) {
        this.pbid = pbid;
    }

    public String getPbname() {
        return pbname;
    }

    public void setPbname(String pbname) {
        this.pbname = pbname;
    }

    public int getSrid() {
        return srid;
    }

    public void setSrid(int srid) {
        this.srid = srid;
    }

    public Date getShdate() {
        return shdate;
    }

    public void setShdate(Date shdate) {
        this.shdate = shdate;
    }

    public Date getShOutdate() {
        return shOutdate;
    }

    public void setShOutdate(Date shOutdate) {
        this.shOutdate = shOutdate;
    }

    Date shOutdate;
}
