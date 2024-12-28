package com.hstc.task_clocking.service.teacher;

import com.hstc.task_clocking.entity.Checkin;

import java.util.List;

public interface Teacher_CheckinService {
    public List<Checkin> QueryCheckinList();
    public int CallbackCheckin(int checkinId);
}
