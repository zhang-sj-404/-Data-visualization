package com.czu.zsj.controller;


import com.czu.zsj.pojo.Master;
import com.czu.zsj.pojo.User;
import com.czu.zsj.service.MasterService;
import com.czu.zsj.util.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("master")
public class MasterController {
    @Autowired
    private MasterService masterService;

    ResultVo vo = null;

    @RequestMapping("findAdminUserByPhone")
    @ResponseBody
    public ResultVo findAdminUserByPhone(String m_phone,String m_pass){
        Master adminUserByPhone = masterService.findAdminUserByPhone(m_phone, m_pass);
        if(adminUserByPhone!=null){
            vo = new ResultVo(1001,"登陆成功",adminUserByPhone);
        }
        else {
            vo = new ResultVo(1002,"登陆失败");
        }
        return vo;
    }
}
