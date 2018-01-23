package com.oracle.controller;

import com.oracle.Dao.*;
import com.oracle.entity.Medicine;
import com.oracle.entity.Recipe;
import com.oracle.Dao.MedicineDao;
import com.oracle.Dao.RecipeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wangjinge on 2017/8/11.
 */
@Controller
@RequestMapping(value = "/recipe")
public class RecipeController {
    @Autowired
    private RecipeDao recipeDao;
    @Autowired
    private MedicineDao medicineDao;
    @Autowired
    private PatientbaseDao patientbaseDao;
    @RequestMapping("/doctor")
    public String paa() {
        return "stayhistory/doctor";
    }
    @RequestMapping(value = "/addrecipe", method = RequestMethod.GET)
    public String addrecipe(Model model){
        return "chufang/tianjiachufang";
    }
    @RequestMapping(value = "/recipelist", method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public List chaxun(Model model,@RequestParam int pbid){
        List<Recipe> list = recipeDao.recipelist(pbid);
        return list;
    }
    @RequestMapping(value = "/save",method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public int save(HttpServletRequest request,String rname,@RequestParam int pbid){
        String[] mname = request.getParameterValues("mname");
        String[] mcount = request.getParameterValues("mcount");
        String[] runit = request.getParameterValues("runit");

        for(int i = 0;i <= mname.length;i++){
            Recipe recipe = new Recipe();
            recipe.setMname(mname[i]);
            recipe.setMcount(Integer.parseInt(mcount[i]));
            recipe.setRunit(runit[i]);
            recipe.setRname(rname);
            recipe.setPbid(pbid);
            recipeDao.addrecipe(recipe);

        }
        Map map = new HashMap();
        map.put("pbid",pbid);
        map.put("pbtype","诊断中");
        int result=patientbaseDao.changepbtype(map);
        return result;
    }
}
