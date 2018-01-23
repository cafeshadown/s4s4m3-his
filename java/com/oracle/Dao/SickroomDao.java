package com.oracle.Dao;

import com.oracle.entity.Sickroom;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@MapperScan
@Component("sickroomDao")
public interface SickroomDao {
    public List selectroom();
    public Sickroom changeroomcount(int id);
   public Sickroom selectroombysbid();
   public int countchange(Map map);
}
