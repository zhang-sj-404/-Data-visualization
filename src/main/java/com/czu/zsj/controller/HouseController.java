package com.czu.zsj.controller;


import com.czu.zsj.pojo.*;
import com.czu.zsj.service.HouseService;
import com.czu.zsj.util.DeleteHouseVo;
import com.czu.zsj.util.InsertHouseVO;
import com.czu.zsj.util.ResultVo;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("house")
public class HouseController {
    @Autowired
    private HouseService houseService;
    private ResultVo vo;
    @RequestMapping("/getAllHouse")
    @ResponseBody
    public List<House> getAllHouse(String city_location_url){

        //自动补全快捷键ctrl+alt+v
        List<House> house = houseService.getAllHouse(city_location_url);
        return house;
    }

    @RequestMapping("/getAllHouseByPage")
    @ResponseBody
    public ResultVo getAllHouseByPage(String city_location_url, int currentPage){
        PageInfo<House> allHouseByPage = houseService.getAllHouseByPage(city_location_url, currentPage);
        if(allHouseByPage!=null)
        {
            vo=new ResultVo(8001,"yes",allHouseByPage);
        }
        else{
            vo=new ResultVo(8002,"no");
        }
        return vo;
    }

    @RequestMapping("/getHouseByOption")
    @ResponseBody
    public ResultVo getHouseByOption(String city_location_url,String h_district ,int currentPage){
        PageInfo<House> houseByOption = houseService.getHouseByOption(city_location_url,h_district,currentPage);
        if(houseByOption!=null)
        {
            vo=new ResultVo(9001,"yes",houseByOption);
        }
        else{
            vo=new ResultVo(9002,"no");
        }
        return vo;
    }

    @RequestMapping("/getmyshoucang")
    @ResponseBody
    public ResultVo getmyshoucang(String city_location_url,String s_user ,int currentPage){
        PageInfo<House> getmyshoucang = houseService.getmyshoucang(city_location_url, s_user, currentPage);
        if(getmyshoucang!=null)
        {
            vo=new ResultVo(3001,"yes",getmyshoucang);
        }
        else{
            vo=new ResultVo(3002,"no");
        }
        return vo;
    }



    @RequestMapping("/pie")
    @ResponseBody
    public List<House_ByType_Pie> getHouseByType(){

        //自动补全快捷键ctrl+alt+v
        List<House_ByType_Pie> house_byType_pies = houseService.getHouseByType();
//        System.out.println(house_byType_pies);
        return house_byType_pies;
    }

    @RequestMapping("/getHousePriceUnitAvg")
    @ResponseBody
    public List<HousePriceUnitAvg> getHousePriceUnitAvg(String city_location_url){
        List<HousePriceUnitAvg> housePriceUnitAvg = houseService.getHousePriceUnitAvg(city_location_url);
        System.out.println(housePriceUnitAvg);
        return housePriceUnitAvg;
    }
    @RequestMapping("/getHouseRenovationByStrict")
    @ResponseBody
    public List<HouseRenovation> getHouseRenovationByStrict(String city_location_url,String h_district){
        List<HouseRenovation> houseRenovationByStrict = houseService.getHouseRenovationByStrict(city_location_url, h_district);
        return houseRenovationByStrict;
    }

    @RequestMapping("/getHouseAreaPrice")
    @ResponseBody
    public List<HouseAreaPrice> getHouseAreaPrice(String city_location_url,String h_district){
        List<HouseAreaPrice> houseAreaPrice = houseService.getHouseAreaPrice(city_location_url, h_district);
        return houseAreaPrice;
    }


    @RequestMapping("/getHouseTypePrice")
    @ResponseBody
    public List<HouseTypePrice> getHouseTypePrice(String city_location_url,String h_district){
        List<HouseTypePrice> houseTypePrice = houseService.getHouseTypePrice(city_location_url, h_district);
        return houseTypePrice;
    }


    @RequestMapping("/getHouseDistrictPrice")
    @ResponseBody
    public List<HouseDistrictPrice> getHouseDistrictPrice(String city_location_url){
        List<HouseDistrictPrice> houseDistrictPrice = houseService.getHouseDistrictPrice(city_location_url);
        return houseDistrictPrice;
    }



    @RequestMapping("/getHouseDistrictPriceUnit")
    @ResponseBody
    public List<HouseDistrictPriceUnit> getHouseDistrictPriceUnit(String city_location_url){
        List<HouseDistrictPriceUnit> houseDistrictPriceUnit = houseService.getHouseDistrictPriceUnit(city_location_url);
        return houseDistrictPriceUnit;
    }

    @RequestMapping("/getHouseHeigthPrice")
    @ResponseBody
    public List<HouseHeigthPrice> getHouseHeigthPrice(String city_location_url,String h_district){
        List<HouseHeigthPrice> houseHeigthPrice = houseService.getHouseHeigthPrice(city_location_url, h_district);
        return houseHeigthPrice;
    }

    @RequestMapping("/getHouseFace")
    @ResponseBody
    public List<HouseFace> getHouseFace(String city_location_url,String h_district){
        List<HouseFace> houseFace = houseService.getHouseFace(city_location_url, h_district);
        return houseFace;
    }

    @RequestMapping("/insertHouse")
    @ResponseBody
    public ResultVo insertHouse(String city_location_url,String h_district,String h_tatil,String h_address,String h_type,String h_area,String h_face,String h_renovation,String h_heigth,String h_structure,String h_price_unit,String h_price_total){

        InsertHouseVO insertHouseVO=new InsertHouseVO(city_location_url);



        insertHouseVO.setH_district(h_district);
        insertHouseVO.setH_title(h_tatil);
        insertHouseVO.setH_address(h_address);
        insertHouseVO.setH_type(h_type);
        double hh_area=Double.parseDouble(h_area);
        insertHouseVO.setH_area(hh_area);
        insertHouseVO.setH_face(h_face);
        insertHouseVO.setH_renovation(h_renovation);
        insertHouseVO.setH_heigth(h_heigth);
        insertHouseVO.setH_structure(h_structure);
        int hh_unit=Integer.parseInt(h_price_unit);
        insertHouseVO.setH_price_unit(hh_unit);
        float hh_total=Float.parseFloat(h_price_total);
        insertHouseVO.setH_price_total(hh_total);


        int row=houseService.insertHouse(insertHouseVO);

        if(row>0){
            vo=new ResultVo(1001,"插入成功");
        }else {
            vo=new ResultVo(1002,"插入失败");
        }

        return vo;
    }



    @RequestMapping("/deleteInfo")
    @ResponseBody
    public ResultVo deleteInfo(String city_location_url,String h_id )
    {
        int hh_id=Integer.valueOf(h_id);
        DeleteHouseVo deleteHouseVo=new DeleteHouseVo(hh_id,city_location_url);
        int row=houseService.deleteInfo(deleteHouseVo);
        if(row>0){
            vo = new ResultVo(6001,"删除成功");
        }
        else {
            vo = new ResultVo(6002,"删除失败");
        }
        return vo;
    }

    @RequestMapping("/getHouseByJudge")
    @ResponseBody
    public ResultVo getHouseByJudge(String city_location_url)
    {
        List<House> houseByJudge = houseService.getHouseByJudge(city_location_url);
        if(houseByJudge!=null){
            vo = new ResultVo(9001,"查询成功",houseByJudge);
        }
        else {
            vo = new ResultVo(9002,"查询失败");
        }
        return vo;
    }

    @RequestMapping("/judgeInfo")
    @ResponseBody
    public ResultVo judgeInfo(String city_location_url,String h_id )
    {
        int hh_id=Integer.parseInt(h_id);
        DeleteHouseVo deleteHouseVo=new DeleteHouseVo(hh_id,city_location_url);
        int row=houseService.judgeInfo(deleteHouseVo);
        if(row>0){
            vo = new ResultVo(1001,"审核成功");
        }
        else {
            vo = new ResultVo(1002,"审核失败");
        }
        return vo;
    }


    @RequestMapping("/getMaxPrice")
    @ResponseBody
    public ResultVo getMaxPrice(String city_location_url,String h_district )
    {
        MaxMinPrice maxPrice = houseService.getMaxPrice(city_location_url, h_district);
        if(maxPrice!=null){
            vo = new ResultVo(1001,"查询成功",maxPrice);
        }
        else {
            vo = new ResultVo(1002,"查询失败");
        }
        return vo;
    }


    @RequestMapping("/getMinPrice")
    @ResponseBody
    public ResultVo getMinPrice(String city_location_url,String h_district )
    {
        MaxMinPrice minPrice = houseService.getMinPrice(city_location_url, h_district);
        if(minPrice!=null){
            vo = new ResultVo(1001,"查询成功",minPrice);
        }
        else {
            vo = new ResultVo(1002,"查询失败");
        }
        return vo;
    }



}
