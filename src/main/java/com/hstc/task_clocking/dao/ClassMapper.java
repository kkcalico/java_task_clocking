package com.hstc.task_clocking.dao;

import com.hstc.task_clocking.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ClassMapper {
    public List<Class> queryTeacherWithClass(@Param("identification") String identification);
}
