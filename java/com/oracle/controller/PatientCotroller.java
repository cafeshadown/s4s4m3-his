package com.oracle.controller;

import com.github.pagehelper.PageHelper;
import com.oracle.Dao.*;
import com.oracle.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
@RequestMapping(value = "/pb")
public class PatientCotroller {
    @Autowired
    public EmpDao empDao;
    @Autowired
    public DeptDao deptDao;
   @Autowired
   public ChargeDao chargeDao;
   @Autowired
   public PatientbaseDao patientbaseDao;
   @Autowired
   public RecipeDao recipeDao;
@Autowired
public MedicineDao medicineDao;

    @RequestMapping("/patient")
    public String admi() {
        return "patient/pb";
    }
    @RequestMapping("/pay")
    public String pay() {
        return "patient/pays";
    }
    @RequestMapping("/lookill")
    public String paya() {
        return "patient/lookill";
    }



    @RequestMapping(value = "/pbinput", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public int inputemp(Model model, Patientbase patientbase) {
        patientbase.setPbtype("待诊");
        int result = patientbaseDao.pbinput(patientbase);
        if(result==1) {
            Map map = new HashMap();
            map.put("pbname",patientbase.getPbname());
            Patientbase pb = patientbaseDao.pbidselect(map);

            Charge charge = patientbase.getCharge();
            charge.setPbid(pb.getPbid());
            charge.setCname("挂号");
            charge.setCtype("已结");
            chargeDao.chargeinput(charge);
//        List<Dept> depts =deptDao.deptselect();
//        model.addAttribute("depts", depts);
//        model.addAttribute("emp", emp);
            return result;
        }else {
            return result;
        }
    }
//住院缴费
    @RequestMapping(value = "/pbpayroom", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public int pbpayroom(Model model, Charge charge,@RequestParam int pbid) {
        charge.setPbid(pbid);
        charge.setCname("住院押金");
        charge.setCtype("押金");
        int result= chargeDao.pbpayroom(charge);
        Map map = new HashMap();
        map.put("pbid",pbid);
        map.put("pbtype","待住院");
         patientbaseDao.changepbtype(map);
        return result;
    }
    @RequestMapping(value = "/pbupdate", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public int updateemp(Model model, Employee emp) {
        int result = empDao.empupdate(emp);
//        List<Dept> depts =deptDao.deptselect();
//        model.addAttribute("depts", depts);
//        model.addAttribute("emp", emp);
        return result;
    }

    @RequestMapping(value = "/pblist", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public List<Patientbase> employeeList(@RequestParam String seachname) {
        if (seachname != null) {
            Map map = new HashMap();
            map.put("pbname", "%" + seachname + "%");
            List<Patientbase> patientbases = patientbaseDao.selectbypbname(map);
            return patientbases;
        } else {
            List<Patientbase> patientbases = patientbaseDao.pbselect();
            return patientbases;
        }
    }
    @RequestMapping(value = "/paylist", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public List<Charge> payList(@RequestParam String seachname) {
        if (seachname != null) {
            Map map = new HashMap();
            map.put("pbname",seachname);
            Patientbase patientbase=patientbaseDao.pbidselect(map);
            int pbid = patientbase.getPbid();
            List<Charge> charges = chargeDao.selectbypbid(pbid);
            return charges;
        } else {
            List<Charge> charges = chargeDao.chargeselect();
            return charges ;
        }
    }



    @RequestMapping(value = "/delete")
    @ResponseBody
    private int delete(@RequestParam int pbid) {
        int result = patientbaseDao.pbdelete(pbid);
        return result;
    }

    @RequestMapping(value = "/deptlist", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public List<Dept> deptList() {

            List<Dept> depts = deptDao.deptselect();
            return depts;

    }
    //购药查询
    @RequestMapping(value = "/recipelist",method = {RequestMethod.POST,RequestMethod.GET})
    @ResponseBody
    public List recipelist(@RequestParam int pbid){
        System.out.println(pbid);
        List<Recipe> recipes =recipeDao.recipelist(pbid);
        return recipes;
    }
    @RequestMapping(value = "/tongji")
    @ResponseBody
    public Double tongji(@RequestParam int pbid){
        Double ccprice=0.00;
        List<Recipe> recipes =recipeDao.recipelist(pbid);
        Iterator it = recipes.iterator();
        while (it.hasNext()){
            Recipe recipe = (Recipe)it.next();
            Medicine medicine = medicineDao.selectbyname(recipe.getMname());
            ccprice+=medicine.getPrice()*recipe.getMcount();
        }


        return ccprice;
    }
    @RequestMapping(value = "/paymedince",method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public int paymedince(@RequestParam int pbid,@RequestParam Double ccprice) {
        Charge charge = new Charge();
        charge.setPbid(pbid);
        charge.setCname("购药");
        charge.setCtype("已结");
        charge.setCprice(ccprice);
        int result = chargeDao.pbpayroom(charge);
        return result;
    }
}
