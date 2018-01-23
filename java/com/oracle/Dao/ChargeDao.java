package com.oracle.Dao;

import com.oracle.entity.Charge;
import com.oracle.entity.Patientbase;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
@MapperScan
@Component("chargeDao")
public interface ChargeDao {
    public List chargeselect();
    public List selectbypcname(Map map);
    public int chargedelete(int pbid);
    public int chargeinput(Charge charge);
    public int pbpayroom(Charge charge);
   public List selectbypbid(int pbid);
}
