package com.oracle.Dao;

import com.oracle.entity.Kind;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by wangjinge on 2017/8/10.
 */
@MapperScan
@Component("kindDao")
public interface KindDao {
    public int KindAdd(Kind kind);
    public int kindupdate(Kind kind);
    public List selectbyid(int id);
    public List selectAll();

}
