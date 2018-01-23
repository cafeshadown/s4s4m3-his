package com.oracle.Dao;

import com.oracle.entity.Position;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

import java.util.List;
@MapperScan
@Component("PositionDao")
public interface PositionDao {
   public List positionselect();
    public Position selectbypid(int pid);
}
