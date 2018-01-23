package com.oracle.Dao;

import com.oracle.entity.Dept;
import org.apache.ibatis.annotations.*;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

import java.util.List;

@MapperScan
@Component("DeptDao")
public interface DeptDao {
    public Dept selectbydid(int did);
   public List deptselect();
}
