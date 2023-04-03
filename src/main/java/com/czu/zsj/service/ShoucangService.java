package com.czu.zsj.service;


import com.czu.zsj.mapper.ShoucangMapper;
import com.czu.zsj.pojo.Shoucang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("shoucangService")
public class ShoucangService {
    @Autowired
    private ShoucangMapper shoucangMapper;

    public int addInfo(String s_user,String s_house,String s_city){
        int user_id=Integer.valueOf(s_user);
        int house_id=Integer.valueOf(s_house);
        Shoucang shoucang=new Shoucang();
        shoucang.setS_city(s_city);
        shoucang.setS_house(house_id);
        shoucang.setS_user(user_id);
        int row = shoucangMapper.addInfo(shoucang);
        return  row;
    }

    public List<Shoucang> findInfo(String s_city,String s_user,String s_house){
        List<Shoucang> info = shoucangMapper.findInfo( s_city,s_user, s_house);
        return info;

    }

}
