package com.we.controller;

import com.we.pojo.User;
import com.we.service.Impl.UserServiveImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.we.service.Impl.UserServiveImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserServiveImpl userServive;

@RequestMapping(value = "/loginUser",method = RequestMethod.POST)
    public String loginUser( User user, Model model,HttpServletRequest request){
        HttpSession session = request.getSession();
        String uname = user.getUname();
        String upassword = user.getUpassword();
//测试
        System.out.println(uname);
        //判断是邮箱还是手机号的正则表达式
        String ph  = "^[1][3578]\\d{9}$";//手机号
        String em = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";//邮箱
        if(uname.matches(ph)){//手机号登录
            /*如果匹配上则将用户名置空，并将username中的值写到setPhone()方法中*/
            user.setUname(null);
            user.setPhone(uname);
            //测试是否更改
//            System.out.println("phone"+user.getPhone());
        }else if(uname.matches(em)){
            /*如果匹配上则将用户名置空，并将username中的值写到setE_mail()方法中*/
            user.setUname(null);
            user.setE_mail(uname);
        }
    User login = userServive.loginUser(user);
//    System.out.println(login);
        if(login==null){
            model.addAttribute("msg","用户名或密码有误 请重新输入");
            return "login";
        }else {
        session.setAttribute("login",login);
        //请求转发跳转index
        return "index";
        }

}
}
