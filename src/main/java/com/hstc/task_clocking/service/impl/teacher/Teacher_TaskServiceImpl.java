package com.hstc.task_clocking.service.impl.teacher;

import com.hstc.task_clocking.dao.teacher.Teacher_TaskMapper;
import com.hstc.task_clocking.entity.Task;
import com.hstc.task_clocking.service.teacher.Teacher_TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Teacher_TaskServiceImpl implements Teacher_TaskService {
    @Autowired
    private Teacher_TaskMapper teacherTaskMapper;

    /**
     * 教师发布任务
     * @param task task任务表
     * @return
     */
    @Override
    public int AddTask(Task task) {
        return teacherTaskMapper.AddTask(task);
    }

    /**
     * 查询教师任务表
     * @return
     */
    @Override
    public List<Task> QueryTaskWithTeacherID(String teacherID) {
        return teacherTaskMapper.QueryTaskWithTeacherID(teacherID);
    }

    /**
     * 删除所选任务
     * @param homeworkID 主键标识符
     * @return
     */
    @Override
    public int DeleteTask(int homeworkID) {
        return teacherTaskMapper.DeleteTask(homeworkID);
    }

    /**
     * 修改所选的任务（更新）
     * @param task task任务表
     * @return
     */
    @Override
    public int UpdateTask(Task task) {
        return teacherTaskMapper.UpdateTask(task);
    }

    @Override
    public Task QueryTaskWithHomeworkID(int homeworkID) {
        return teacherTaskMapper.QueryTaskWithHomeworkID(homeworkID);
    }
}
