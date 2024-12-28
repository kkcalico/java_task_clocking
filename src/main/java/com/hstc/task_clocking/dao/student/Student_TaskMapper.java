package com.hstc.task_clocking.dao.student;

import com.hstc.task_clocking.entity.Task;
import org.apache.ibatis.annotations.Mapper;

import java.time.LocalDateTime;
import java.util.List;

@Mapper
public interface Student_TaskMapper {
    public List<Task> QueryTaskWithClassID(int ClassID);
    public List<Task> QueryTaskList();
    public List<Task> QueryTasksByDeadline(LocalDateTime start, LocalDateTime end);
}
