package com.czu.zsj.service;

import com.czu.zsj.mapper.Newstudentmapper;
import com.czu.zsj.pojo.NewStudent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("NewStudentService")
public class NewStudentService {

    @Autowired
    private Newstudentmapper newstudentmapper;

    public List<NewStudent> getAllStudent() {
        return newstudentmapper.getAllStudent();
    }

}
