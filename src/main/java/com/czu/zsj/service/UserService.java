package com.czu.zsj.service;

import com.czu.zsj.mapper.UserMapper;
import com.czu.zsj.pojo.User;
import com.czu.zsj.util.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public User findUserByPhone(String u_phone, String u_pass){
        return userMapper.findUserByPhone(u_phone,u_pass);
    }

    public int insertUser(User user){
        return userMapper.insertUser(user);
    }

    public User findUserByid(String u_id){return userMapper.findUserByid(u_id);}

    public int updateMyInfo(User user){
        return userMapper.updateMyInfo(user);
    }

    public List<User> getAllUser(){
        return userMapper.getAllUser();
    }


}
