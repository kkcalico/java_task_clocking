package com.hstc.task_clocking.dao.student;

import com.hstc.task_clocking.entity.Checkin;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface Student_CheckinMapper {
    public int AddCheckin(Checkin checkin);
    public List<Checkin> QueryCheckinList();
}
