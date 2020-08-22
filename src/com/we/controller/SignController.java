package com.we.controller;

import com.we.pojo.User;
import com.we.service.RegisterService;
import com.we.util.SmsSender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/sign")
public class SignController {
    @Autowired
    private RegisterService registerService;
    //验证手机号是否存在
    @RequestMapping(value = "/validMobile",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String validMobile(String mobile){
        User user = registerService.selByMobile(mobile);
        if(user!=null) {
            return "1";
        }else{
            return "0";
        }
    }

    //发送验证码
    @RequestMapping(value = "/sendSms",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String sendSms(String mobile){
        String code = SmsSender.send(mobile);
        System.out.println(code);
        if(code!=null){
            return "1";
        }else{
            return "0";
        }
    }
    //验证验证码是否正确
    @RequestMapping(value = "/validMobileCode",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String validMobileCode(String code){
        if(SmsSender.getNumber().equals(code)) {
            SmsSender.clearNumber();
            return "1";
        }else{
            return "0";
        }
    }

    //验证邮箱是否可用
    @RequestMapping(value = "/validEmail",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String validEmail(String email){
        User user = registerService.selByEmail(email);
        if(user!=null) {
            return "1";
        }else{
            return "0";
        }
    }
}
