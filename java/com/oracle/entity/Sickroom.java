package com.oracle.entity;

import java.util.List;

public class Sickroom {
    int srid;//病房编号
    int did;//科室
    int srAllcount;//病床总数
    int srcount;//病床数量
    Double srprice;//价格
    Dept dept;
    List<Sickbed> sickbeds;

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public List<Sickbed> getSickbeds() {
        return sickbeds;
    }

    public void setSickbeds(List<Sickbed> sickbeds) {
        this.sickbeds = sickbeds;
    }

    public int getSrid() {
        return srid;
    }

    public void setSrid(int srid) {
        this.srid = srid;
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public int getSrAllcount() {
        return srAllcount;
    }

    public void setSrAllcount(int srAllcount) {
        this.srAllcount = srAllcount;
    }

    public int getSrcount() {
        return srcount;
    }

    public void setSrcount(int srcount) {
        this.srcount = srcount;
    }

    public Double getSrprice() {
        return srprice;
    }

    public void setSrprice(Double srprice) {
        this.srprice = srprice;
    }
}
