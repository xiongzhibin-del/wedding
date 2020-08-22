package com.we.controller;

import com.we.pojo.*;
import com.we.service.OrderService;
import com.we.service.ProvinceService;
import com.we.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.util.*;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @RequestMapping(value = "/agreement",produces = "text/html;charset=utf-8")
    public String agreement(Agreement agreement, HttpSession session, HttpServletRequest request){
//        System.out.println(agreement);
        User login = (User)session.getAttribute("login");
        agreement.setU_id(login.getU_id());
        int n = orderService.addAgree(agreement);
        if(n==1){
            return "forward:/order/selectByUid";
        }else {
            request.setAttribute("msg","您已经填写过真爱协议，协议录入失败");
            return "cart_agreement";
        }
    }

    @Autowired
    private ProvinceService provinceService;
    @RequestMapping(value = "/selectByUid",produces = "text/html;charset=utf-8")
    public String selectByUid(HttpSession session, Model model){
        User login =(User) session.getAttribute("login");
        Shipping shipping = orderService.selectMainAddr(login.getU_id());
        List<City> pros = provinceService.selectPros();
        model.addAttribute("ship",shipping);
        model.addAttribute("pros",pros);
        return "cart_order";
    }

    @RequestMapping(value = "/addOrder",produces = "text/html;charset=utf-8")
    public String addOrder(int sid,String remark,long total,HttpSession session,Model model){
        User login =(User) session.getAttribute("login");
        List<Orders> orders = new ArrayList<>();
        long random = Random.getRandom();
        Calendar c = Calendar.getInstance();
        c.add(Calendar.DATE, 20);//计算20天后的时间,预计20天送达
        Date date = new Date(c.getTimeInMillis());
        Date time = new Date(System.currentTimeMillis());
        //查询真爱协议编号
        int agid = orderService.getAgree(login.getU_id());
        //查询地址
        for (int i = 0; i < login.getCart().size(); i++) {
            Orders order = new Orders();
            order.setAgid(agid);
            order.setU_id(login.getU_id());
            order.setC_id(login.getCart().get(i).getC_id());
            order.setSid(sid);
            order.setRandom(random);
            order.setEt(date);
            order.setRemark(remark);
            order.setState("未支付");
            order.setLogisistics("顺丰");
            order.setKezi(login.getCart().get(i).getKezi());
            order.setChicun(login.getCart().get(i).getChicun());
            order.setTotal(total);
            order.setOrderdate(time);
            orders.add(order);
        }
        int n = orderService.addOrders(orders,login.getU_id());
        if(n==1){
            SessionOrder sessionOrder = new SessionOrder();
            sessionOrder.setAgid(agid);
            sessionOrder.setU_id(login.getU_id());
            sessionOrder.setSid(sid);
            sessionOrder.setRandom(random);
            sessionOrder.setEt(date);
            sessionOrder.setRemark(remark);
            sessionOrder.setState("未支付");
            sessionOrder.setLogisistics("顺丰");
            //深度拷贝
            List<Cart> newCarts = new ArrayList<>(Arrays.asList(new Cart[login.getCart().size()]));
            Collections.copy(newCarts,login.getCart());
            sessionOrder.setCarts(newCarts);
            sessionOrder.setTotal(total);
            sessionOrder.setOrderdate(time);
            sessionOrder.setShipping(orderService.selectMainAddr(login.getU_id()));
//            System.out.println(sessionOrder);
            session.setAttribute("order",sessionOrder);
            List<SessionOrder> orderList = (List<SessionOrder>)session.getAttribute("orders");
            orderList.add(sessionOrder);
            session.setAttribute("orders",orderList);
//            System.out.println(orderList);
            login.getCart().clear();
            model.addAttribute("msg","订单提交成功，请您尽快完成支付！");
        }else{
            model.addAttribute("msg","订单提交失败！");
        }
        return "cart_order_success";
    }

    @RequestMapping(value = "/cancle/{random}",produces = "text/html;charset=utf-8")
    public String cancle(@PathVariable long random,HttpSession session,Model model){
//        System.out.println(random);
        int n = orderService.cancleByRandom(random);
        if(n==1){
            User login = (User)session.getAttribute("login");
            List<SessionOrder> orders = (List<SessionOrder>)orderService.selectOrders(login.getU_id());
            session.setAttribute("orders",orders);
            model.addAttribute("msg","取消订单成功");
        }else{
            model.addAttribute("msg","取消订单失败");
        }
        return "member_order";
    }

    @RequestMapping(value = "/pay",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String pay(long random){
        int n = orderService.pay(random);
        if(n==1) {
            return "success";
        }else {
            return "fail";
        }
    }

}
