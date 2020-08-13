package com.we.controller;

import com.we.pojo.User;
import com.we.service.Impl.MenberServeImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/menber")
public class MenberController {
    @Autowired
  private    MenberServeImpl menberServe;
    @RequestMapping("/menberUpdate/{uname}")
    @ResponseBody
    public String menberUpdate(@PathVariable String uname, HttpSession session, Model model){
        System.out.println("我进来了");
        System.out.println(uname);
        int n = menberServe.menberUpdate(uname);
        System.out.println(n);
        if(n==1){
            return "修改成功";

        }else {
            return "修改失败";
        }

    }
}
