package com.czu.zsj.controller;


import com.czu.zsj.pojo.Shoucang;
import com.czu.zsj.service.ShoucangService;
import com.czu.zsj.util.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@RequestMapping("shoucang")
@Controller
public class ShoucangController {

    @Autowired
    private ShoucangService shoucangService;
    private ResultVo vo;

    @RequestMapping("addInfo")
    @ResponseBody
    public ResultVo addInfo(String s_user,String s_house,String s_city){
        int row = shoucangService.addInfo(s_user, s_house, s_city);
        if(row>0){
            vo = new ResultVo(7001,"收藏成功");
        }else {
            vo = new ResultVo(7002,"已收藏");
        }
        return  vo;
    }

    @RequestMapping("findInfo")
    @ResponseBody
    public ResultVo findInfo(String s_city,String s_user,String s_house){
        List<Shoucang> info = shoucangService.findInfo(s_city,s_user, s_house);
        if(info!=null&&info.size()!=0){
            vo = new ResultVo(6001,"已经收藏",info);
        }else {
            vo = new ResultVo(6002,"no");
        }
        return vo;
    }


}
