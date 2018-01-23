package com.oracle.Dao;

import com.oracle.entity.Recipe;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by wangjinge on 2017/8/11.
 */
@MapperScan
@Component("recipeDao")
public interface RecipeDao {
    @Insert("insert into t_recipe (mname,mcount,runit,rname,pbid) values (#{mname},#{mcount},#{runit},#{rname},#{pbid})")
    public int addrecipe(Recipe recipe);
    @Select("select * from t_recipe where pbid = #{pbid}")
    public List<Recipe> recipelist(int pbid);
}
