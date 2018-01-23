package com.oracle.entity;

import java.util.Date;

public class Employee {
   private int eid;//员工
    private int did;//科室
    private int pid;//职位
    private String ename;//姓名
    private int egender;//性别
    private  int eage;//年龄
    private  Date ebirth;//生日
    private int ephone;//手机号
    private int etype;//权限
    private String ecard;//身份证号
    private String password;//密码
    private Dept dept;
    private Position position;

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public Position getPosition() {
        return position;
    }

    public void setPosition(Position position) {
        this.position = position;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public int getEgender() {
        return egender;
    }

    public void setEgender(int egender) {
        this.egender = egender;
    }

    public int getEage() {
        return eage;
    }

    public void setEage(int eage) {
        this.eage = eage;
    }

    public Date getEbirth() {
        return ebirth;
    }

    public void setEbirth(Date ebirth) {
        this.ebirth = ebirth;
    }

    public int getEphone() {
        return ephone;
    }

    public void setEphone(int ephone) {
        this.ephone = ephone;
    }

    public int getEtype() {
        return etype;
    }

    public void setEtype(int etype) {
        this.etype = etype;
    }

    public String getEcard() {
        return ecard;
    }

    public void setEcard(String ecard) {
        this.ecard = ecard;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
