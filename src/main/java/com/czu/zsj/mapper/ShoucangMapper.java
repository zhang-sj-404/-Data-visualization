package com.czu.zsj.mapper;

import com.czu.zsj.pojo.Shoucang;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoucangMapper {
    int addInfo(Shoucang shoucang);

    List<Shoucang> findInfo(@Param("s_city") String s_city,@Param("s_user") String s_user,@Param("s_house") String s_house);

}
