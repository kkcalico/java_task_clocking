package com.hstc.task_clocking.controller.teacher;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("teacher")
public class TeacherController {

    /**
     * 页面验证
     * @return all-teacher-index.jsp
     */
    @RequestMapping("index")
    public String index() {
        return "teacher/all-teacher-index";
    }

    /**
     * 返回首页
     * @return all-teacher-index.jsp
     */
    @GetMapping("page")
    public String teacherPage() {
        return "teacher/all-teacher-index";
    }

    /**
     * 个人中心
     * @return all-teacher-profile.jsp
     */
    @GetMapping("profile")
    public String teacherProfile() {
        return "teacher/all-teacher-profile";
    }
}
