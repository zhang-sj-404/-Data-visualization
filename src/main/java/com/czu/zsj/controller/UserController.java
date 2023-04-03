package com.czu.zsj.controller;


import com.czu.zsj.pojo.User;
import com.czu.zsj.service.UserService;
import com.czu.zsj.util.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    ResultVo vo = null;

    @RequestMapping("findUserByPhone")
    @ResponseBody
    public ResultVo findUserByPhone(String u_phone,String u_pass){
        User user = userService.findUserByPhone(u_phone, u_pass);
        if(user!=null){
            vo = new ResultVo(1001,"登陆成功",user);
        }
        else {
            vo = new ResultVo(1002,"登陆失败");
        }
        return vo;
    }

    @RequestMapping("insertUser")
    @ResponseBody
    public ResultVo insertUser(String u_name,String u_pass,String u_phone,String u_email){
        User user = new User();
        user.setU_name(u_name);
        user.setU_password(u_pass);
        user.setU_phone(u_phone);
        user.setU_email(u_email);
        int row=userService.insertUser(user);
        if (row > 0) {
            vo=new ResultVo(2001,"注册成功");
        }else {
            vo=new ResultVo(2002,"注册失败");
        }
        return vo;
    }

    @RequestMapping("findUserByid")
    @ResponseBody
    public ResultVo findUserByid(String u_id){
        User user = userService.findUserByid(u_id);
        if(user!=null){
            vo = new ResultVo(1001,"yes",user);
        }
        else {
            vo = new ResultVo(1002,"no");
        }
        return vo;
    }


    @RequestMapping("updateMyInfo")
    @ResponseBody
    public ResultVo updateMyInfo(String u_id,String u_name,String u_phone,String u_email,String u_pass){
        int uu_id=Integer.valueOf(u_id);
        User user = new User(uu_id,u_name,u_pass,u_phone,u_email);
        int row=userService.updateMyInfo(user);
        if (row > 0) {
            vo=new ResultVo(2001,"修改成功");
        }else {
            vo=new ResultVo(2002,"修改失败");
        }
        return vo;
    }


    @RequestMapping("getAllUser")
    @ResponseBody
    public ResultVo getAllUser(){
        List<User> allUser = userService.getAllUser();
        if (allUser != null) {
            vo=new ResultVo(8001,"yes",allUser);
        }else {
            vo=new ResultVo(8002,"no");
        }
        return vo;
    }


}
