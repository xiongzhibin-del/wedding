package com.we.controller;

import com.github.pagehelper.PageHelper;
import com.we.pojo.Commdity;
import com.we.service.CommdityService;
import com.we.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/commdity")
public class CommdityController {
    @Autowired
    private CommdityService commdityService;
    @RequestMapping(value = "/selectFour",produces = "text/html;charset=utf-8")
    public String selectAll(HttpSession session){
        List<Commdity> commdities = commdityService.selectFour();
        Collections.sort(commdities);
        List<Commdity> comm = commdities.subList(0, 4);
        session.setAttribute("commdities",comm);
        return "index";
    }

    @RequestMapping(value = "/selectPage/{pageNum}",produces = "text/html;charset=utf-8")
    public String selectPage(@PathVariable Integer pageNum, @RequestParam(defaultValue = "16") Integer pageSize,HttpSession session,Model model){
        List<Commdity> commdities = commdityService.selectAll(pageNum, pageSize);
        System.out.println(commdities);
        int num = Page.getPageNum();
        long total = Page.getTotal();
        session.setAttribute("commdities",commdities);
        model.addAttribute("num",num);
        model.addAttribute("total",total);
        return "lists";
    }
}
