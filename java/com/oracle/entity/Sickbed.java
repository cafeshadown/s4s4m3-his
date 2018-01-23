package com.oracle.entity;

public class Sickbed {
    int sbid;//病床
    int srid;//病房
    int sbname;//床位号
    int sbtype;//病床状态
    int pbid;//病人编号
    Sickroom sickroom;
int eid;
Patientbase pb;
Charge charge;

    public Patientbase getPb() {
        return pb;
    }

    public void setPb(Patientbase pb) {
        this.pb = pb;
    }

    public Charge getCharge() {
        return charge;
    }

    public void setCharge(Charge charge) {
        this.charge = charge;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getSbid() {
        return sbid;
    }

    public void setSbid(int sbid) {
        this.sbid = sbid;
    }

    public int getSrid() {
        return srid;
    }

    public void setSrid(int srid) {
        this.srid = srid;
    }

    public int getSbname() {
        return sbname;
    }

    public void setSbname(int sbname) {
        this.sbname = sbname;
    }

    public int getSbtype() {
        return sbtype;
    }

    public void setSbtype(int sbtype) {
        this.sbtype = sbtype;
    }

    public int getPbid() {
        return pbid;
    }

    public void setPbid(int pbid) {
        this.pbid = pbid;
    }

    public Sickroom getSickroom() {
        return sickroom;
    }

    public void setSickroom(Sickroom sickroom) {
        this.sickroom = sickroom;
    }
}
