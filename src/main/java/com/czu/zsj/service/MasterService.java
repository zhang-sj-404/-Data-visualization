package com.czu.zsj.service;


import com.czu.zsj.mapper.MasterMapper;
import com.czu.zsj.pojo.Master;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("masterService")
public class MasterService {

    @Autowired
    private MasterMapper masterMapper;

    public Master   findAdminUserByPhone(String m_phone, String m_pass){return masterMapper.findAdminUserByPhone(m_phone,m_pass) ;}



}
