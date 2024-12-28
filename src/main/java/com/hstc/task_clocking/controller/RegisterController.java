package com.hstc.task_clocking.controller;

import com.hstc.task_clocking.entity.Task;
import com.hstc.task_clocking.service.*;
import com.hstc.task_clocking.entity.User;
import com.hstc.task_clocking.service.student.Student_TaskService;
import com.hstc.task_clocking.service.teacher.Teacher_TaskService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/register")
public class RegisterController {
    @Autowired
    private UserService userService;
    @Autowired
    private Teacher_TaskService teacherTaskService;
    @Autowired
    private Student_TaskService student_taskService;
    @Autowired
    private Register_LoginService register_loginService;  // 注入接口实现类

    /**
     * 跳转注册
     * @return all-register.jsp
     */
    @GetMapping("/page")
    public String registerPage() {
        return "all-register";
    }


    /**
     * 注册成功跳转所属页面
     * @param httpServletRequest http接口请求（参数注入）
     * @param user
     * @param model
     * @return
     */
    @PostMapping("/sql")
    public String registerSQL(HttpServletRequest httpServletRequest, User user, Model model) {
//        int userId = user.getUserId();
        String name = user.getName();
        String identification = user.getIdentification();
        String password = user.getPassword();
        String roleString = user.getRole().name();
        int classId = user.getClassId();

        System.out.println(name + identification + password + roleString + classId);
        System.out.println("Role: " + roleString);

        // 调用注册方法
        int result = register_loginService.registerUser(user);

        /*
        学生老师基本信息
         */
        List<User> userLists = userService.queryUserList(identification);
        httpServletRequest.getSession().setAttribute("userLists", userLists);  // 保存到 Session

        /*
        教师发布任务表
         */
        List<Task> taskLists = teacherTaskService.QueryTaskWithTeacherID(identification);
        httpServletRequest.getSession().setAttribute("taskLists", taskLists);

        /*
        学生收到的任务表
         */
        List<Task> taskListsForStudent = student_taskService.QueryTaskWithClassID(classId);
        httpServletRequest.getSession().setAttribute("taskListsForStudent", taskListsForStudent);


        if (result > 0) {
            // 根据角色重定向到不同的页面
            if (user.getRole() == User.Role.STUDENT) {
                return "student/all-student-index"; // 学生重定向到学生主页
            } else if (user.getRole() == User.Role.TEACHER) {
                return "teacher/all-teacher-index"; // 教师重定向到教师主页
            } else {
                model.addAttribute("error", "未知角色");
                return "all-register"; // 未知角色返回注册页面
            }
        } else {
            model.addAttribute("error", "注册失败");
            return "all-register"; // 注册失败，返回注册页面
        }
    }
}
