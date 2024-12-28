package com.hstc.task_clocking.service.student;

import com.hstc.task_clocking.entity.Checkin;

import java.util.List;

public interface Student_CheckinService {
    public int AddCheckin(Checkin checkin);
    public List<Checkin> QueryCheckinList();

}
