package com.hstc.task_clocking.service;

import com.hstc.task_clocking.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClassService {
    public List<Class> queryTeacherWithClass(String identification);
}
