package com.we.aspect;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.we.pojo.Commdity;
import com.we.pojo.Shipping;
import com.we.service.CommdityService;
import com.we.service.ShippingService;
import com.we.util.Page;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


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

    @Autowired
    private CommdityService commdityService;
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
}
