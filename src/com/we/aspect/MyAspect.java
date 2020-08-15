package com.we.aspect;

import com.we.pojo.Shipping;
import com.we.service.ShippingService;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;


@Aspect
public class MyAspect {
    @Autowired
    private ShippingService shippingService;
    @Around("execution(* com.we.service.Impl.ShippingServiceImpl.saveShipping(..))")
    public Object targetChange(ProceedingJoinPoint point) throws Throwable {
        Object[] args = point.getArgs();
        Shipping shipping = (Shipping) args[0];
        int target = shipping.getTarget();
        if(target==1){
            shippingService.updateTarget(shipping.getU_id(),shipping.getSid());
        }
        int proceed =(Integer) point.proceed();
        return proceed;
    }
}
