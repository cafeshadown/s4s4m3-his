package com.oracle.Dao;

import com.oracle.entity.Employee;
import com.oracle.entity.Patientbase;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
@MapperScan
@Component("patientbaseDao")
public interface PatientbaseDao {
    public List pbselect();
    public List selectbypbname(Map map);
    public int pbdelete(int eid);
    public int pbinput(Patientbase patientbase);
    public Patientbase pbidselect(Map map);
    public  int changepbtype(Map map);

}
