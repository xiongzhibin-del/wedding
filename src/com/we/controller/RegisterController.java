package com.we.controller;

import com.we.pojo.User;
import com.we.service.RegisterService;
import com.we.util.Rename;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.rmi.Remote;

@Controller
@RequestMapping("/register")
public class RegisterController {
    @Autowired
    private RegisterService registerService;

    @RequestMapping(value = "/mobile",produces = "text/html;charset=utf-8")
    public String mobile(String mobile,String mobile_pwd, Model model){
        User user = new User();
        String name = Rename.getName();
        user.setUname(name);
        user.setMobile(mobile);
        user.setUpassword(mobile_pwd);
        int n = registerService.addUser(user);
        if(n==1){
            model.addAttribute("msg","注册成功");
            return "login";
        }else{
            model.addAttribute("msg","注册失败");
            return "reg";
        }
    }

    @RequestMapping(value = "/email",produces = "text/html;charset=utf-8")
    public String email(String email,String email_pwd, Model model){
        User user = new User();
        String name = Rename.getName();
        user.setUname(name);
        user.setE_mail(email);
        user.setUpassword(email_pwd);
        int n = registerService.addUser(user);
        if(n==1){
            model.addAttribute("msg","注册成功");
            return "login";
        }else{
            model.addAttribute("msg","注册失败");
            return "reg";
        }
    }
    //找回密码
    @RequestMapping("/forget")
    public String forget(String mobile, String mobile_pwd, Model model){
        System.out.println(mobile);
        System.out.println(mobile_pwd);

        int n = registerService.forget(mobile, mobile_pwd);
        if(n==1){
            model.addAttribute("msg","重置密码成功");
            return "login";
        }else {
            model.addAttribute("msg","重置密码失败");
            return "forget";
        }

    }
}
