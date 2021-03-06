package com.we.controller;

import com.github.pagehelper.PageHelper;
import com.we.pojo.Commdity;
import com.we.pojo.LIulan;
import com.we.pojo.Shoucang;
import com.we.pojo.User;
import com.we.service.CommdityService;
import com.we.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.util.ArrayList;
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
        int num = Page.getPageNum();
        long total = Page.getTotal();
        session.setAttribute("commdities",commdities);
        model.addAttribute("num",num);
        model.addAttribute("total",total);
        return "lists";
    }

    @RequestMapping(value = "/pagePre",produces = "text/html;charset=utf-8")
    public String pagePre(HttpSession session,Model model){
        Integer pageNum = Page.getPageNum() - 1;
        if(Page.getPageNum()==1){
            pageNum = 1;
        }
        List<Commdity> commdities = commdityService.selectAll(pageNum, 16);
        int num = Page.getPageNum();
        long total = Page.getTotal();
        session.setAttribute("commdities",commdities);
        model.addAttribute("num",num);
        model.addAttribute("total",total);
        return "lists";
    }

    @RequestMapping(value = "/pageNext",produces = "text/html;charset=utf-8")
    public String pageNext(HttpSession session,Model model){
        Integer pageNum = Page.getPageNum() + 1;
        List<Commdity> commdities = commdityService.selectAll(pageNum, 16);
        int num = Page.getPageNum();
        long total = Page.getTotal();
        session.setAttribute("commdities",commdities);
        model.addAttribute("num",num);
        model.addAttribute("total",total);
        return "lists";
    }
    @RequestMapping(value = "/selectBytype/{seres}/{pageNum}",produces = "text/html;charset=utf-8")
    public String selectBytype(@PathVariable String seres,@PathVariable Integer pageNum,@RequestParam(defaultValue = "16")Integer pageSize,HttpSession session,Model model){
        List<Commdity> commdities = commdityService.selectBytype(pageNum,pageSize,seres);
        int num = Page.getPageNum();
        long total = Page.getTotal();
        session.setAttribute("commdities",commdities);
        model.addAttribute("num",num);
        model.addAttribute("total",total);
        model.addAttribute("seres",seres);
        return "lists";
    }

    @RequestMapping(value = "/select/{ckeyword}/{priceList}/{zctList}/{czList}",produces = "text/html;charset=utf-8")
    public String select(@PathVariable String ckeyword,@PathVariable int priceList,@PathVariable int zctList,@PathVariable int czList,HttpSession session){
        List<Commdity> commdities = commdityService.select(ckeyword, priceList, zctList, czList);
        session.setAttribute("commdities",commdities);
        return "lists";
    }

    @RequestMapping(value = "/detail/{index}",produces = "text/html;charset=utf-8")
    public String detail(@PathVariable int index,HttpSession session,Model model){
        List<Commdity> commdities =(List<Commdity>) session.getAttribute("commdities");
        Commdity commdity = commdities.get(index);
        User login =(User) session.getAttribute("login");
        List<Commdity> liulans = commdityService.liulan(login.getU_id(), commdity.getC_id());
        model.addAttribute("comm",commdity);
        model.addAttribute("liulans",liulans);
        return "detail";
    }

    @RequestMapping(value = "/shoucang/{c_id}",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String shoucang(@PathVariable int c_id,HttpSession session){
        User login =(User) session.getAttribute("login");
        int n = commdityService.shoucang(login.getU_id(), c_id,new Date(System.currentTimeMillis()));
        if(n==1){
            return "success";
        }else{
            return "fail";
        }
    }
    @RequestMapping(value = "/detail1",produces = "text/html;charset=utf-8")
    public String detail1(HttpSession session,Model model){
        User login =(User) session.getAttribute("login");
        int u_id = login.getU_id();
        List<Commdity> liulans = commdityService.jilu(u_id);
        model.addAttribute("liulans",liulans);
        return "forward:/avatar/loginphoto";
    }
    //查看商品的收藏
    @RequestMapping(value = "/detail2",produces = "text/html;charset=utf-8")
    public String detail2(HttpSession session,Model model){
        User login =(User) session.getAttribute("login");
        int u_id = login.getU_id();
        List<Commdity> shoucangs = commdityService.shoucang1(u_id);
        model.addAttribute("shoucangs",shoucangs);
        return "member_collect";
    }
    //删除商品的收藏
    @RequestMapping("/deleteshoucang")
    @ResponseBody
    public String deleteshoucang(int c_id,HttpSession session,Model model){
        User login =(User) session.getAttribute("login");
        int u_id = login.getU_id();
        int n = commdityService.deleteshoucang(u_id, c_id);
        if(n==1){
            return "1";
        }else {
            return "0";
        }
    }

    //查商品，根据c_id
    @RequestMapping(value = "/amply",produces = "text/html;charset=utf-8")
    public String amply(int c_id,Model model,HttpSession session){
        Commdity comm = commdityService.amply(c_id);
        User login =(User) session.getAttribute("login");
        int u_id = login.getU_id();
        List<Commdity> liulans = commdityService.jilu(u_id);
        model.addAttribute("liulans",liulans);
        model.addAttribute("comm",comm);
        return "detail";
    }
}
