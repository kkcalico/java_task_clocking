package com.hstc.task_clocking.service.impl.student;

import com.hstc.task_clocking.dao.student.Student_CheckinMapper;
import com.hstc.task_clocking.entity.Checkin;
import com.hstc.task_clocking.service.student.Student_CheckinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Student_CheckinServiceImpl implements Student_CheckinService {
    @Autowired
    private Student_CheckinMapper student_checkinMapper;

    /**
     * 学生任务提交
     * @param checkin checkin打卡表
     * @return
     */
    @Override
    public int AddCheckin(Checkin checkin) {
        return student_checkinMapper.AddCheckin(checkin);
    }

    @Override
    public List<Checkin> QueryCheckinList() {
        return student_checkinMapper.QueryCheckinList();
    }
}
