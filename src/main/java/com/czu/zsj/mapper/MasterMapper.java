package com.czu.zsj.mapper;

import com.czu.zsj.pojo.Master;
import com.czu.zsj.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface MasterMapper {

    Master findAdminUserByPhone(@Param("m_phone") String m_phone, @Param("m_pass") String m_pass);
}
