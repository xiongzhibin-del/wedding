package com.we.aspect;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.we.mapper.CommdityMapper;
import com.we.mapper.OrderMapper;
import com.we.mapper.ShippingMapper;
import com.we.pojo.*;
import com.we.service.CommdityService;
import com.we.service.ShippingService;
import com.we.util.Page;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@Aspect
public class MyAspect {
    @Autowired
    private ShippingService shippingService;
    @Around("execution(* com.we.service.Impl.ShippingServiceImpl.saveShipping(..)) ||"+
    "execution(* com.we.service.Impl.ShippingServiceImpl.addShipping(..))")
    public Object targetChange(ProceedingJoinPoint point) throws Throwable {
        Object[] args = point.getArgs();
        Shipping shipping = (Shipping) args[0];
        int target = shipping.getTarget();
        //执行插入和更新操作
        int proceed =(Integer) point.proceed();
        if(target==1){
            shippingService.updateTarget(shipping.getU_id(),shipping.getSid());
        }
        return proceed;
    }

//    @Autowired
//    private CommdityService commdityService;
    @Around("execution(* com.we.service.Impl.CommdityServiceImpl.selectAll(..)) ||"+
    "execution(* com.we.service.Impl.CommdityServiceImpl.selectBytype())")
    public Object pageHelper(ProceedingJoinPoint point) throws Throwable {
        Object[] args = point.getArgs();
        Integer pageNum = (Integer) args[0];
        Integer pageSize = (Integer) args[1];
        PageHelper.startPage(pageNum,pageSize);
        List<Commdity> commdities =(List<Commdity>) point.proceed();
        PageInfo<Commdity> page = new PageInfo<>(commdities);
        Page.setPageNum(page.getPageNum());
        Page.setTotal(page.getTotal());
        return commdities;
    }

    @Autowired
    private CommdityMapper commdityMapper;
    @Autowired
    private OrderMapper orderMapper;
    @Around("execution(* com.we.service.Impl.OrderServiceImpl.selectOrders(..))")
    public Object change (ProceedingJoinPoint point) throws Throwable {
        Map<Long,List<Orders>> map =(Map<Long,List<Orders>>) point.proceed();
        List<SessionOrder> orders = new ArrayList<>();
        for (List<Orders> list:map.values()){
            SessionOrder order = new SessionOrder();
//            private int agid;//真爱协议编号
//            private int u_id;//用户编号
//            private int sid;//收货地址编号
//            private long random;//随机码编号
//            private Date et;//预定收货时间
//            private String remark;//订单备注
//            private String state;//状态
//            private String logisistics;//物流方式
//            private List<Cart> carts;//商品和刻字的总共
//            private long total;//总金额
//            private Shipping shipping;//收件地址
            if(list.size()!=0) {
                order.setAgid(list.get(0).getAgid());
                order.setU_id(list.get(0).getU_id());
                order.setSid(list.get(0).getSid());
                order.setRandom(list.get(0).getRandom());
                order.setEt(list.get(0).getEt());
                order.setRemark(list.get(0).getRemark());
                order.setState(list.get(0).getState());
                order.setLogisistics(list.get(0).getLogisistics());
                order.setTotal(list.get(0).getTotal());
                order.setOrderdate(list.get(0).getOrderdate());
                List<Cart> carts = new ArrayList<>();
                for (int i = 0; i < list.size(); i++) {
                    Cart cart = new Cart();
//    private int cid;
//    private int u_id;
//    private int c_id;
//    private String kezi;
//    private int chicun;
//    private Commdity commdity;
                    cart.setU_id(list.get(i).getU_id());
                    cart.setC_id(list.get(i).getC_id());
                    cart.setKezi(list.get(i).getKezi());
                    cart.setChicun(list.get(i).getChicun());
                    cart.setCommdity(commdityMapper.liulans(list.get(i).getC_id()));
                    carts.add(cart);
                }
                order.setCarts(carts);
                order.setShipping(orderMapper.selectMainAddr(list.get(0).getU_id()));
                orders.add(order);
            }
        }
        return orders;
    }
}
