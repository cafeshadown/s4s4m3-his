package com.oracle.controller;

import com.github.pagehelper.PageHelper;
import com.oracle.Dao.DeptDao;
import com.oracle.Dao.EmpDao;
import com.oracle.Dao.PositionDao;
import com.oracle.entity.Dept;
import com.oracle.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Controller
@RequestMapping(value = "/emp")
public class EmpCotroller {
    @Autowired
    @Qualifier("EmpDao")
    public EmpDao empDao;
    @Autowired
    @Qualifier("DeptDao")
    public DeptDao deptDao;
    @Autowired
    @Qualifier("PositionDao")
    public PositionDao positionDao;
    @RequestMapping("/employee")
    public String admi() {
        return "emp/employee";
    }
    @RequestMapping("/emp")
    public String emp() {
        return "emp/emp";
    }
    @RequestMapping("/input")
    public String input() {
        return "emp/empinput";
    }

    @RequestMapping(value = "/empinput", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public int inputemp(Model model, Employee emp) {
        int result = empDao.empinput(emp);

//        List<Dept> depts =deptDao.deptselect();
//        model.addAttribute("depts", depts);
//        model.addAttribute("emp", emp);
        return result;
    }
    @RequestMapping(value = "/empupdate", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public int updateemp(Model model, Employee emp) {
        int result = empDao.empupdate(emp);
//        List<Dept> depts =deptDao.deptselect();
//        model.addAttribute("depts", depts);
//        model.addAttribute("emp", emp);
        System.out.println(result);
        return result;
    }

    @RequestMapping(value = "/employeelist", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public List<Employee> employeeList(@RequestParam String seachname) {
        if (seachname != null){
            Map map = new HashMap();
            map.put("ename", "%" + seachname + "%");
            List<Employee> emps = empDao.selectbyename(map);
            return emps;
        } else {
            List<Employee> emps = empDao.empselect();
            return emps;
        }
    }
    @RequestMapping(value = "/emplist", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public List<Employee> empList(@RequestParam String seachname ,@RequestParam int startpage) {
        if (seachname != null){
            Map map = new HashMap();
            map.put("ename", "%" + seachname + "%");
            PageHelper.startPage(startpage, 2);
            List<Employee> emps = empDao.selectbyename(map);
            return emps;
        } else {
            PageHelper.startPage(startpage, 2);
            List<Employee> emps = empDao.empselect();
            return emps;
        }
    }

@RequestMapping(value = "/delete")
@ResponseBody
private int delete(@RequestParam int eid){

    int result=empDao.empdelete(eid);
return result;

}
    @RequestMapping(value = "/count" ,method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    private int count(@RequestParam String seachname) {
        if (seachname != null) {
            Map map = new HashMap();
            map.put("ename", "%" + seachname + "%");
            List<Employee> emps = empDao.selectbyename(map);
            int i = emps.size();
            if (i % 2 >=0) {
                i = i/2 + 1;
            } else {
                i = i / 2;
            }
            return i;
        } else {
            Map map = new HashMap();
            List<Employee> emps = empDao.empselect();
            int x =emps.size();
            if (x %2!=0 ) {
                x = x / 2 + 1;
            } else {
                x = x / 2;
            }
            return x;
        }
    }
}
