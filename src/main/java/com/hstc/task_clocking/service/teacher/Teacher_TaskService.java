package com.hstc.task_clocking.service.teacher;

import com.hstc.task_clocking.entity.Task;

import java.util.List;

public interface Teacher_TaskService {
    public int AddTask(Task task);
    public List<Task> QueryTaskWithTeacherID(String teacherID);
    public int DeleteTask(int homeworkID);
    public int UpdateTask(Task task);
    public Task QueryTaskWithHomeworkID(int homeworkID);
}
