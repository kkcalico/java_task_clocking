package com.hstc.task_clocking.dao.teacher;

import com.hstc.task_clocking.entity.Checkin;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface Teacher_CheckinMapper {
    public List<Checkin> QueryCheckinList();
    public int CallbackCheckin(int checkinId);
}
