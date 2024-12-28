package com.hstc.task_clocking.service.impl;

import com.hstc.task_clocking.dao.ClassMapper;
import com.hstc.task_clocking.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassServiceImpl implements ClassService {
    @Autowired
    private ClassMapper classMapper;

    /**
     * 教师查看班级信息（外键约束）
     * @param identification 工号
     * @return
     */
    @Override
    public List<Class> queryTeacherWithClass(String identification) {
        return classMapper.queryTeacherWithClass(identification);
    }
}
