package com.we.controller;

import com.we.pojo.User;
import com.we.service.Impl.MenberServeImpl;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/menber")
public class MenberController {
    @Autowired
     private    MenberServeImpl menberServe;
    @RequestMapping("/menberUpdate")
    public String menberUpdate(String oldpassword, String newpassword, HttpSession session, Model model) {
        User user=new User();
//        //判断是否密码正确
//        System.out.println(oldpassword);
//        System.out.println(newpassword);
        //获取存在浏览器里面的数据
        User login =(User) session.getAttribute("login");
        //获取用户id
        int id = login.getU_id();
        //获取用户密码
        String upassword = login.getUpassword();
        //判断穿进来的值是否与用户密码一致
//        System.out.println(id+upassword);
        if(upassword.equals(oldpassword)){
//            System.out.println("进了这里");
            int n = menberServe.menberUpdate(newpassword,id);
//            System.out.println(n);
//            System.out.println(n);
            if(n==1){
                model.addAttribute("msg","修改成功");
            }else {
                model.addAttribute("msg","修改失败");
            }
        }else {
            model.addAttribute("msg","您输入的密码有误，请重新输入");
        }
        return "member_pwd";
    }
}
