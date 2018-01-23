package com.oracle.Dao;

import com.oracle.entity.Employee;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@MapperScan
@Component("EmpDao")
public interface EmpDao {
    public List empselect();
    public List selectbyename(Map map);
    public int empdelete(int eid);
    public List empsbypid(int id);
           public List empsbydid(int id);
           public int empinput(Employee employee);
           public int empupdate(Employee employee);
           public Employee login(String ename);
   public Employee selectbyeid(int id);
}
