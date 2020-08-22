package com.we.controller;

import com.we.pojo.SessionOrder;
import com.we.pojo.User;
import com.we.service.Impl.UserServiceImpl;
import com.we.service.OrderService;
import com.we.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserServiceImpl userService;
    @Autowired
    private RegisterService registerService;
    @Autowired
    private OrderService orderService;
    @RequestMapping(value = "/loginUser")
    public String loginUser( User user, Model model,HttpServletRequest request){
        HttpSession session = request.getSession();
        String uname = user.getUname();
        String upassword = user.getUpassword();
//测试
        //判断是邮箱还是手机号的正则表达式
        String ph  = "^[1][3578]\\d{9}$";//手机号
        String em = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";//邮箱
        if(uname.matches(ph)){//手机号登录
            /*如果匹配上则将用户名置空，并将username中的值写到setPhone()方法中*/
            user.setUname(null);
            user.setMobile(uname);
            //测试是否更改
//            System.out.println("phone"+user.getPhone());
        }else if(uname.matches(em)){
            /*如果匹配上则将用户名置空，并将username中的值写到setE_mail()方法中*/
            user.setUname(null);
            user.setE_mail(uname);
        }
    User login = userService.loginUser(user);
//    System.out.println(login);
        if(login==null){
            model.addAttribute("msg","用户名或密码有误 请重新输入");
            return "login";
        }else {
            session.setAttribute("login",login);
            List<SessionOrder> orders = (List<SessionOrder>)orderService.selectOrders(login.getU_id());
//            System.out.println(orders);
            session.setAttribute("orders",orders);
            return "forward:/commdity/selectFour";
        }

}
    //修改用户个人信息
    @RequestMapping(value = "/updateUser",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String updateUser(User user,String year,String month,String day,String pro,String city,String dis,HttpSession session){
        Date date = new Date(year+"/"+month+"/"+day);
        java.sql.Date udate = new java.sql.Date(date.getTime());
        user.setUdate(udate);
        user.setUregion(pro+city+dis);
//        System.out.println(user);
        User login = (User)session.getAttribute("login");
        User u1 = null;
        User u2 = null;
        if(user.getMobile()!=null) {
            if (login.getMobile() != null) {
                //如果电话变化，查询是否有重复的电话,前提是原来的电话和现在的电话不为空值
                if (!login.getMobile().equals(user.getMobile())) {
                    u1 = registerService.selByMobile(user.getMobile());
                }
                //如果电话从空到有值
            } else if (login.getMobile() == null) {
                u1 = registerService.selByMobile(user.getMobile());
            }
        }
        //如果邮箱变化，查询是否有重复的邮箱
        if(user.getE_mail()!=null) {
            if (login.getE_mail() != null) {
                //如果邮箱变化，查询是否有重复的邮箱,前提是原来的电话和现在的电话不为空值
                if (!login.getE_mail().equals(user.getE_mail())) {
                    u2 = registerService.selByEmail(user.getE_mail());
                }
                //如果邮箱从空到有值
            } else if (login.getE_mail() == null) {
                u2 = registerService.selByEmail(user.getE_mail());
            }
        }
        if(u1!=null){
            return "repeat";
        }else if(u2!=null){
            return "erepeat";
        }else {
            int n = userService.updateUser(user);
            if (n == 1) {
                User newLogin = userService.loginUser(login);
                session.setAttribute("login",newLogin);
                return "success";
            } else {
                return "false";
            }
        }
    }
//用户退出登录，清除session
    @RequestMapping("/exitUser")
    @ResponseBody
    public String exitUser(HttpSession session){
        session.invalidate();//强制失效session
        return "1";
    }
    //查询安全等级

}
