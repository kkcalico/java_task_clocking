package com.hstc.task_clocking.service.impl.teacher;

import com.hstc.task_clocking.dao.teacher.Teacher_CheckinMapper;
import com.hstc.task_clocking.entity.Checkin;
import com.hstc.task_clocking.service.teacher.Teacher_CheckinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Teacher_CheckinServiceImpl implements Teacher_CheckinService {
    @Autowired
    private Teacher_CheckinMapper teacher_checkinMapper;
    @Override
    public List<Checkin> QueryCheckinList() {
        return teacher_checkinMapper.QueryCheckinList();
    }
    @Override
    public int CallbackCheckin(int checkinId) {
        return teacher_checkinMapper.CallbackCheckin(checkinId);
    }
}
