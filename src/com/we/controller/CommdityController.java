package com.we.controller;

import com.we.pojo.Commdity;
import com.we.service.CommdityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/commdity")
public class CommdityController {
    @Autowired
    private CommdityService commdityService;
    @RequestMapping(value = "/selectFour",produces = "text/html;charset=utf-8")
    public void selectAll(){
        List<Commdity> commdities = commdityService.selectAll();
        System.out.println(commdities);
    }
}
