package com.hstc.task_clocking.service.impl.student;

import com.hstc.task_clocking.dao.student.Student_TaskMapper;
import com.hstc.task_clocking.entity.Task;
import com.hstc.task_clocking.service.impl.EmailServiceImpl;
import com.hstc.task_clocking.service.student.Student_TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;


@Service
public class Student_TaskServiceImpl implements Student_TaskService {
    @Autowired
    private Student_TaskMapper student_taskMapper;
    @Autowired
    private EmailServiceImpl emailService;
    @Override
    public List<Task> QueryTaskWithClassID(int ClassID) {
        return student_taskMapper.QueryTaskWithClassID(ClassID);
    }
    @Override
    public List<Task> QueryTaskList() {
        return student_taskMapper.QueryTaskList();
    }
    @Override
    public List<Task> QueryTasksByDeadline(LocalDateTime start, LocalDateTime end) {
        return student_taskMapper.QueryTasksByDeadline(start, end);
    }

    @Scheduled(cron = "0 0 * * * ?")
    public void checkTasksForNotifications() {
        List<Task> tasks = student_taskMapper.QueryTaskList();
        LocalDateTime now = LocalDateTime.now();

        for (Task task : tasks) {
            LocalDateTime deadline = task.getDeadline(); // 获取任务的截止时间
            if (deadline != null) {
                // 使用 Duration 计算时间差
                Duration duration = Duration.between(now, deadline);
                long hoursDifference = duration.toHours();  // 获取时间差的小时数

                if (hoursDifference <= 2 && hoursDifference > 0) {
                    // 发送邮件通知
                    emailService.sendEmail(task.getStudentEmail(), task.getTitle(), "任务即将截止，请尽快处理！");
                }
            }
        }
    }
}
