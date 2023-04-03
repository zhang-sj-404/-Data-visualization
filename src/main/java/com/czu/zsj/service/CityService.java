package com.czu.zsj.service;


import com.czu.zsj.mapper.CityMapper;
import com.czu.zsj.pojo.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("CityService")
public class CityService {

    @Autowired
    private CityMapper cityMapper;
    public List<City> getAllCity(){return cityMapper.getAllCity();}

}
