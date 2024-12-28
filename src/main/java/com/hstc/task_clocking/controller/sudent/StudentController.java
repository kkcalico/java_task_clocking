package com.hstc.task_clocking.controller.sudent;

import com.hstc.task_clocking.entity.Checkin;
import com.hstc.task_clocking.entity.Task;
import com.hstc.task_clocking.entity.User;
import com.hstc.task_clocking.service.UserService;
import com.hstc.task_clocking.service.student.Student_CheckinService;
import com.hstc.task_clocking.service.student.Student_TaskService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.HandlerInterceptor;

import java.util.List;

@Controller
@RequestMapping("student")
public class StudentController {
    @Autowired
    private UserService userService;
    @Autowired
    private Student_CheckinService student_checkinService;
    @Autowired
    private Student_TaskService student_taskService;
    /**
     * 返回首页
     * @return all-student-index.jsp
     */
    @GetMapping("/page")
    public String studentPage(@RequestParam(value = "classId", required = false) Integer classId, HttpServletRequest httpServletRequest) {
        /*
        学生收到的任务表
         */
        if(classId != null) {
            List<Task> taskListsForStudent = student_taskService.QueryTaskWithClassID(classId);
            httpServletRequest.getSession().setAttribute("taskListsForStudent", taskListsForStudent);
        }
        /*
        学生的打卡表,检测是否完成作业
         */
        List<Checkin> checkinListsForStudent = student_checkinService.QueryCheckinList();
        httpServletRequest.getSession().setAttribute("checkinListsForStudent", checkinListsForStudent);
        return "student/all-student-index";
    }

    /**
     * 个人中心
     * @return all-student-profile.jsp
     */
    @GetMapping("/profile")
    public String teacherProfile() {
        return "student/all-student-profile";
    }
}
