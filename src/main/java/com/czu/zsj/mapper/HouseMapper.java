package com.czu.zsj.mapper;

import com.czu.zsj.pojo.*;
import com.czu.zsj.util.DeleteHouseVo;
import com.czu.zsj.util.InsertHouseVO;
import org.apache.ibatis.annotations.Param;
import sun.security.ssl.HandshakeOutStream;

import java.util.List;

public interface HouseMapper {
    List<House> getAllHouse(@Param("city_location_url") String city_location_url);

    List<House> getAllHouseByPage(@Param("city_location_url") String city_location_url);

    List<House> getHouseByCity();
    List<House_ByType_Pie> getHouseByType();

    List<HousePriceUnitAvg> getHousePriceUnitAvg(@Param("city_location_url") String city_location_url);

    List<HouseRenovation> getHouseRenovationByStrict(@Param("city_location_url") String city_location_url,@Param("h_district") String h_district);

    List<HouseAreaPrice> getHouseAreaPrice(@Param("city_location_url") String city_location_url,@Param("h_district") String h_district);

    List<HouseTypePrice> getHouseTypePrice(@Param("city_location_url") String city_location_url,@Param("h_district") String h_district);

    List<HouseDistrictPrice> getHouseDistrictPrice(@Param("city_location_url") String city_location_url);

    List<HouseDistrictPriceUnit> getHouseDistrictPriceUnit(@Param("city_location_url") String city_location_url);

    List<HouseHeigthPrice> getHouseHeigthPrice(@Param("city_location_url") String city_location_url,@Param("h_district") String h_district);

    List<HouseFace> getHouseFace(@Param("city_location_url") String city_location_url,@Param("h_district") String h_district);

    List<House> getHouseByOption(@Param("city_location_url") String city_location_url,@Param("h_district") String h_district);

    List<House> getmyshoucang(@Param("city_location_url") String city_location_url,@Param("s_user") String s_user);

    int insertHouse(InsertHouseVO insertHouseVO);

    int deleteInfo(DeleteHouseVo deleteHouseVo);

    List<House> getHouseByJudge(@Param("city_location_url") String city_location_url);

    int judgeInfo(DeleteHouseVo deleteHouseVo);

    MaxMinPrice getMaxPrice(@Param("city_location_url") String city_location_url,@Param("h_district") String h_district);

    MaxMinPrice getMinPrice(@Param("city_location_url") String city_location_url,@Param("h_district") String h_district);

}
