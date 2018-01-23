package com.oracle.entity;

import java.util.Date;
import java.util.List;

public class Patientbase {
    int pbid;//病人编号
    int rid;//挂号类型编号
    int did;//科室编号
    String pbname;//挂号日期
    int pbgender;//挂号性别
    int pbage;//挂号年龄
    Date pbtime;//挂号日期
    String pbtype;//病人状态

    public String getPbtype() {
        return pbtype;
    }

    public void setPbtype(String pbtype) {
        this.pbtype = pbtype;
    }

    Charge charge;
    Dept dept;
    List<Charge> charges;

    public int getPbid() {
        return pbid;
    }

    public void setPbid(int pbid) {
        this.pbid = pbid;
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public String getPbname() {
        return pbname;
    }

    public void setPbname(String pbname) {
        this.pbname = pbname;
    }

    public int getPbgender() {
        return pbgender;
    }

    public void setPbgender(int pbgender) {
        this.pbgender = pbgender;
    }

    public int getPbage() {
        return pbage;
    }

    public void setPbage(int pbage) {
        this.pbage = pbage;
    }

    public Date getPbtime() {
        return pbtime;
    }

    public void setPbtime(Date pbtime) {
        this.pbtime = pbtime;
    }

    public Charge getCharge() {
        return charge;
    }

    public void setCharge(Charge charge) {
        this.charge = charge;
    }

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public List<Charge> getCharges() {
        return charges;
    }

    public void setCharges(List<Charge> charges) {
        this.charges = charges;
    }
}
