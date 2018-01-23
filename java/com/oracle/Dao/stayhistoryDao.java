package com.oracle.Dao;

import com.oracle.entity.Stayhistory;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@MapperScan
@Component("stayhistoryDao")
public interface stayhistoryDao {
    public List stayhistorylist();
    public int stayhistoryadd(Map map);
    public int outtime(Map map);
    public List stayhistoryfind(int id);
    public List selectbypbname(Map map);
    public Stayhistory out(int id);
}
