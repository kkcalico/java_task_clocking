package com.hstc.task_clocking.dao.teacher;

import com.hstc.task_clocking.entity.Task;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface Teacher_TaskMapper {
    public int AddTask(Task task);
    public List<Task> QueryTaskWithTeacherID(String teacherID);
    public int DeleteTask(int homeworkID);
    public int UpdateTask(Task task);
    public Task QueryTaskWithHomeworkID(int homeworkID);
}
