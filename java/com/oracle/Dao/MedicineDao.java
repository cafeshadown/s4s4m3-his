package com.oracle.Dao;

import com.oracle.entity.Medicine;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by wangjinge on 2017/8/10.
 */
@MapperScan
@Component("medicineDao")
public interface MedicineDao {
    public List medicinelist();
    public Medicine selectbyid(int mid);
    public List selectbykid();
    public int medicineAdd(Medicine medicine);
    public int medicineupdate(Medicine medicine);
    public void shouchu(Medicine medicine);
    public Medicine selectcount(String mname);
    public Medicine selectbyname(String mname);

}
