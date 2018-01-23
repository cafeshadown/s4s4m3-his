package com.oracle.controller;

import com.oracle.Dao.*;
import com.oracle.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/stayhistory")
public class stayhistoryCotroller {
    @Autowired
    @Qualifier("EmpDao")
    public EmpDao empDao;
    @Autowired
    @Qualifier("stayhistoryDao")
    public stayhistoryDao stayhistoryDao;
    @Autowired
    @Qualifier("DeptDao")
    public DeptDao deptDao;
    @Autowired
    @Qualifier("chargeDao")
    public ChargeDao chargeDao;
    @Autowired
    @Qualifier("patientbaseDao")
    public PatientbaseDao patientbaseDao;
    @Autowired
    @Qualifier("sickbedDao")
    public SickbedDao sickbedDao;
    @Autowired
    @Qualifier("sickroomDao")
    public SickroomDao sickroomDao;

    @RequestMapping(value = "/stay")
    public String stay(){
        return "stayhistory/stayhistory";
    }
    @RequestMapping(value = "/stayroom")
    public String stayhistory(){
        return "stayhistory/sickroom";
    }

    @RequestMapping(value = "/roomlist", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public List<Sickroom> roomList() {
//        if (seachname != null){
//            Map map = new HashMap();
//            map.put("ename", "%" + seachname + "%");
//            List<Employee> emps = empDao.selectbyename(map);
//            return emps;
//        } else {
            List<Sickroom> sickrooms = sickroomDao.selectroom();
            return sickrooms;
        }
        @RequestMapping(value = "/inputroom")
        @ResponseBody
    public  int Inputroom(Sickbed sickbed,@RequestParam int srid,@RequestParam int srcount){
            Charge charge =sickbed.getCharge();
            Patientbase pb = sickbed.getPb();
            //加入消费记录
            Map map = new HashMap();
            map.put("pbname",pb.getPbname());
            Patientbase patientbase = patientbaseDao.pbidselect(map);
            charge.setPbid(patientbase.getPbid());

            chargeDao.chargeinput(charge);
            //病床状态改变
            map.put("sbname",sickbed.getSbname());
            map.put("sbid",sickbed.getSbname());
            map.put("pbid",patientbase.getPbid());
            map.put("sbtype",1);
            map.put("srcount",srcount-1);
            map.put("srid",srid);
            map.put("shdate",new Date());
            sickbedDao.sbtypechange(map);
            //住院记录
            int result=stayhistoryDao.stayhistoryadd(map);
            sickroomDao.countchange(map);
        return result;
        }
    @RequestMapping(value = "/historylist", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public List<Stayhistory> historyList(@RequestParam String seachname) {
        if (seachname != null){
            Map map = new HashMap();
            map.put("pbname", "%" + seachname + "%");
            List<Stayhistory> stayhistories = stayhistoryDao.selectbypbname(map);
            return stayhistories;
        } else {
            List<Stayhistory> stayhistoryList =stayhistoryDao.stayhistorylist();
            return stayhistoryList;
        }
    }
    @RequestMapping(value = "/out", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public int out(@RequestParam int shid,@RequestParam String pbname) {
          Stayhistory stayhistory = stayhistoryDao.out(shid);
         Sickroom sickrooms =sickroomDao.changeroomcount(stayhistory.getSrid());
         Map map = new HashMap();
         map.put("shid",shid);
         map.put("sbname",stayhistory.getSbid());
         map.put("srid",stayhistory.getSrid());
         map.put("sbtype",0);
         map.put("shOutdate",new Date());
         map.put("srcount",sickrooms.getSrcount()+1);
         stayhistoryDao.outtime(map);
         //病床状态改变
        int result =sickbedDao.sbtypechange(map);
        //病房床位改变
        sickroomDao.countchange(map);
        return result;
    }
    @RequestMapping( value = "/nullroom",method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public List<Sickbed> nullroom(@RequestParam int srid){
        Map map = new HashMap();
        map.put("srid",srid);
        map.put("sbtype",0);
        List<Sickbed> sickbeds = sickbedDao.nullroom(map);
        return  sickbeds;
    }



    }


