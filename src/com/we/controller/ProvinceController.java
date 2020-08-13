package com.we.controller;

import com.google.gson.Gson;
import com.we.pojo.City;
import com.we.service.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/pro")
public class ProvinceController {
    @Autowired
    private ProvinceService provinceService;

    @RequestMapping(value = "/selectPro",produces = "text/html;charset=utf-8")
    public String selectPro(Model model){
        List<City> pros = provinceService.selectPros();
        model.addAttribute("pros",pros);
        return "member_info";
    }

    @RequestMapping(value = "/proChange",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String proChange(int id){
        List<City> cities = provinceService.selectCitiesByPro(id);
        Gson g = new Gson();
        String gson = g.toJson(cities);
        return gson;
    }

    @RequestMapping(value = "/cityChange",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String cityChange(int id){
        List<City> districts = provinceService.selectCitiesByPro(id);
        Gson g = new Gson();
        String gson = g.toJson(districts);
        return gson;
    }
}
