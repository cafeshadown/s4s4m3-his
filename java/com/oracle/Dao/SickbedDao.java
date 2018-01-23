package com.oracle.Dao;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@MapperScan
@Component("sickbedDao")
public interface SickbedDao {
    public List selectbed();
    public List selectbysrid(int srid);
    public int sbtypechange(Map map);
    public List nullroom(Map map);
}
