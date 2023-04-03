package com.czu.zsj.mapper;

import com.czu.zsj.pojo.User;
import com.czu.zsj.util.ResultVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

     User findUserByPhone(@Param("u_phone") String u_phone, @Param("u_pass") String u_pass);

     int insertUser(User user);


     User findUserByid(@Param("u_id") String u_id);

     int updateMyInfo(User user);


     List<User> getAllUser();
}
