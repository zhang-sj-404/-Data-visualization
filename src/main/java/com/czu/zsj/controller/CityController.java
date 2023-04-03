package com.czu.zsj.controller;


import com.czu.zsj.pojo.City;
import com.czu.zsj.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("city")
public class CityController {

    @Autowired
    private CityService cityService;

    @RequestMapping("/getAllCity")
    @ResponseBody
    public List<City> getAllCity(){
        List<City> city = cityService.getAllCity();
        System.out.println(city);
        return city;
    }

}
