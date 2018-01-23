package com.oracle.entity;

/**
 * Created by wangjinge on 2017/8/11.
 */
public class Recipe {
    private int rid;
    private String mname;
    private int mcount;
    private String runit;
    private String rname;
int pbid;

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

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public int getMcount() {
        return mcount;
    }

    public void setMcount(int mcount) {
        this.mcount = mcount;
    }

    public String getRunit() {
        return runit;
    }

    public void setRunit(String runit) {
        this.runit = runit;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }
}
