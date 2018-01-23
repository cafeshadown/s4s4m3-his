package com.oracle.entity;

import java.util.List;

/**
 * Created by wangjinge on 2017/8/10.
 */
public class Kind {
    private int kid;
    private String kname;
    private List<Medicine> medicine;

    public List getMedicine() {
        return medicine;
    }

    public void setMedicine(List medicine) {
        this.medicine = medicine;
    }

    public int getKid() {
        return kid;
    }

    public void setKid(int kid) {
        this.kid = kid;
    }

    public String getKname() {
        return kname;
    }

    public void setKname(String kname) {
        this.kname = kname;
    }
}
