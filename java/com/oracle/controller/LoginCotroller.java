package com.oracle.controller;

import com.oracle.Dao.DeptDao;
import com.oracle.Dao.EmpDao;
import com.oracle.Dao.PositionDao;
import com.oracle.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/index")
public class LoginCotroller {
    @Autowired
    @Qualifier("EmpDao")
    public EmpDao empDao;
    @Autowired
    @Qualifier("DeptDao")
    public DeptDao deptDao;
    @Autowired
    @Qualifier("PositionDao")
    public PositionDao positionDao;
    @RequestMapping(value = "/login")
    public String l(){return "login/login";}
   @RequestMapping(value = "/logins",method = {RequestMethod.GET,RequestMethod.POST})
    public String login(HttpServletRequest request, HttpServletResponse response, Model model, Employee employee){

        Employee emp = empDao.login(employee.getEname());
        if (emp.getEname()==employee.getEname()||emp.getPassword()==employee.getPassword()){

            model.addAttribute("emp",emp);
            return "emp/admin";
        }else {
            model.addAttribute("emp",emp);
            return "emp/admin";
        }

   }
}
