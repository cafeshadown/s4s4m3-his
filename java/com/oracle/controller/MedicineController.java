package com.oracle.controller;

import com.oracle.entity.Kind;
import com.oracle.entity.Medicine;
import com.oracle.Dao.KindDao;
import com.oracle.Dao.MedicineDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by wangjinge on 2017/8/10.
 */
@Controller
@RequestMapping(value = "/medicine")
public class MedicineController {


    @Autowired
    @Qualifier(value = "medicineDao")
    private MedicineDao medicineDao;
    @Autowired
    @Qualifier(value = "kindDao")
    private KindDao kindDao;
@RequestMapping(value = "/show")
public String medicine(){return "medicine/medicine";}

    @RequestMapping(value = "/medicinesave", method = {RequestMethod.GET,RequestMethod.POST})
    public String save(Medicine medicine, Model model) {
        medicineDao.medicineAdd(medicine);
        return "redirect:/yaofang/chaxunyao";
    }
    @RequestMapping(value = "/medicineadd", method = {RequestMethod.GET,RequestMethod.POST})
    public String add(Model model) {
        List<Kind> lists = kindDao.selectAll();
        List<Medicine> list = medicineDao.medicinelist();
        model.addAttribute("addlists",list);
        model.addAttribute("kind",lists);
        return "yaofang/tianjiayao";
    }
    @RequestMapping(value = "/medicinelist", method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public List<Medicine> list(Model model) {
//        List<Kind> lists =  kindDao.selectAll();
//        model.addAttribute("kind",lists);
        List<Medicine> list = medicineDao.medicinelist();
        return list;
    }
    @RequestMapping(value = "/shouchus", method = {RequestMethod.GET,RequestMethod.POST})
    public String s() {
        return "yaofang/shouchu";
    }
    @RequestMapping(value = "/shouchu/{mname}", method = {RequestMethod.GET,RequestMethod.POST})
    public String shouchu(String mname,int mcount) {

        Medicine medicine1 = medicineDao.selectcount(mname);
        int kucun = medicine1.getMcount();
        medicine1.setMcount(kucun-mcount);
        System.out.println(medicine1.getMcount());
         medicineDao.shouchu(medicine1);
        return "redirect:/yaofang/chaxunyao";
    }
    @RequestMapping(value = "/load/{mid}", method = RequestMethod.GET)
    public String load(@PathVariable int mid, Model model) {
       List<Kind> list = kindDao.selectAll();
        model.addAttribute("load", medicineDao.selectbyid(mid));
        model.addAttribute("kinds",list);
        return "yaofang/bianjiyao";
    }

    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(Medicine medicine) {
        medicineDao.medicineupdate(medicine);
        return "redirect:/yaofang/chaxunyao";
    }

}
