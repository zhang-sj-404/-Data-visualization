package com.czu.zsj.service;


import com.czu.zsj.mapper.HouseMapper;
import com.czu.zsj.pojo.*;
import com.czu.zsj.util.DeleteHouseVo;
import com.czu.zsj.util.InsertHouseVO;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("HouseService")
public class HouseService {

    @Autowired
    private HouseMapper houseMapper;
    public List<House> getAllHouse(String city_location_url) {
        return houseMapper.getAllHouse(city_location_url);
    }

    public PageInfo<House> getAllHouseByPage(String city_location_url,int currentPage){
        PageHelper.startPage(currentPage,20);
        List<House> allHouseByPage = houseMapper.getAllHouseByPage(city_location_url);

        PageInfo<House> pageInfo=new PageInfo<>(allHouseByPage);

        return pageInfo;


    }

    public PageInfo<House> getHouseByOption(String city_location_url,String h_district,int currentPage){
        PageHelper.startPage(currentPage,20);
        List<House> houseByOption = houseMapper.getHouseByOption(city_location_url,h_district);

        PageInfo<House> pageInfo=new PageInfo<>(houseByOption);

        return pageInfo;


    }

    public PageInfo<House> getmyshoucang(String city_location_url,String s_user,int currentPage){
        PageHelper.startPage(currentPage,20);
        List<House> houseByOption = houseMapper.getmyshoucang(city_location_url,s_user);

        PageInfo<House> pageInfo=new PageInfo<>(houseByOption);

        return pageInfo;


    }


    public List<House> getHouseByCity() {
        return houseMapper.getHouseByCity();
    }
    public List<House_ByType_Pie> getHouseByType(){return houseMapper.getHouseByType();}
    public List<HousePriceUnitAvg> getHousePriceUnitAvg(String city_location_url){return houseMapper.getHousePriceUnitAvg(city_location_url);}
    public List<HouseRenovation> getHouseRenovationByStrict(String city_location_url, String h_district){return houseMapper.getHouseRenovationByStrict(city_location_url,h_district);}
    public List<HouseAreaPrice> getHouseAreaPrice(String city_location_url, String h_district){return houseMapper.getHouseAreaPrice(city_location_url,h_district);}

    public List<HouseTypePrice> getHouseTypePrice(String city_location_url, String h_district){return houseMapper.getHouseTypePrice(city_location_url,h_district);}

    public List<HouseDistrictPrice> getHouseDistrictPrice(String city_location_url){return houseMapper.getHouseDistrictPrice(city_location_url);}

    public List<HouseDistrictPriceUnit> getHouseDistrictPriceUnit(String city_location_url){return houseMapper.getHouseDistrictPriceUnit(city_location_url);}

    public List<HouseHeigthPrice> getHouseHeigthPrice(String city_location_url, String h_district){return houseMapper.getHouseHeigthPrice(city_location_url,h_district);}

    public List<HouseFace> getHouseFace(String city_location_url, String h_district){return houseMapper.getHouseFace(city_location_url,h_district);}

    public int insertHouse(InsertHouseVO insertHouseVO){return houseMapper.insertHouse(insertHouseVO);}

    public int deleteInfo(DeleteHouseVo deleteHouseVo){return houseMapper.deleteInfo(deleteHouseVo);}

    public List<House> getHouseByJudge(String city_location_url){return houseMapper.getHouseByJudge(city_location_url);}

    public int judgeInfo(DeleteHouseVo deleteHouseVo){return houseMapper.judgeInfo(deleteHouseVo);}

    public MaxMinPrice getMaxPrice(String city_location_url, String h_district){return houseMapper.getMaxPrice(city_location_url,h_district);}

    public MaxMinPrice getMinPrice(String city_location_url, String h_district){return houseMapper.getMinPrice(city_location_url,h_district);}





}
