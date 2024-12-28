package com.hstc.task_clocking.service.student;

import com.hstc.task_clocking.entity.Task;

import java.time.LocalDateTime;
import java.util.List;

public interface Student_TaskService {
    public List<Task> QueryTaskWithClassID(int ClassID);
    public List<Task> QueryTaskList();
    public List<Task> QueryTasksByDeadline(LocalDateTime start, LocalDateTime end);
}
