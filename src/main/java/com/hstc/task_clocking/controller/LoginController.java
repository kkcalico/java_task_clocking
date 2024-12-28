package com.hstc.task_clocking.controller;

import com.hstc.task_clocking.entity.Checkin;
import com.hstc.task_clocking.entity.Task;
import com.hstc.task_clocking.entity.User;
import com.hstc.task_clocking.service.ClassService;
import com.hstc.task_clocking.service.Register_LoginService;
import com.hstc.task_clocking.service.UserService;
import com.hstc.task_clocking.service.student.Student_CheckinService;
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
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private Register_LoginService register_loginService;  // 注入接口实现类
    @Autowired
    private UserService userService;
    @Autowired
    private ClassService classService;
    @Autowired
    private Teacher_TaskService teacherTaskService;
    @Autowired
    private Student_TaskService student_taskService;
    @Autowired
    private Student_CheckinService student_checkinService;

    /**
     * 跳转登录界面
     * @return all-login.jsp
     */
    @GetMapping("/page")
    public String loginPage() {
        return "all-login";
    }

    /**
     * 拦截器请求
     * @GetMapping null
     * 默认方法 跳转登录界面
     */
    @GetMapping
    public String defaultLoginPage() {
        return "all-login";
    }

    /**
     * 跳转所属的用户页面
     * @retrun all-user-index.jsp
     */
    @PostMapping("sql")
    public String loginSQL(HttpServletRequest httpServletRequest,User user, Model model) {
        // 从请求中获取输入的工号和密码
        String identification = user.getIdentification();
        String password = user.getPassword();
        String roleString = user.getRole().name();

        /*
        学生教师基本信息
         */
        List<User> userLists = userService.queryUserList(identification);
        httpServletRequest.getSession().setAttribute("userLists", userLists);  // 保存到 Session
        User firstUser = userLists.get(0);  // 获取列表中的第一个 User 对象
        int classId = firstUser.getClassId();  // 直接获取 classId
        System.out.println("classId" + classId);

        /*
        教师所管理班级信息
         */
        List<Class> classLists = classService.queryTeacherWithClass(identification);
        httpServletRequest.getSession().setAttribute("classLists", classLists);

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

        /*
        学生的打卡表,检测是否完成作业
         */
        List<Checkin> checkinListsForStudent = student_checkinService.QueryCheckinList();
        httpServletRequest.getSession().setAttribute("checkinListsForStudent", checkinListsForStudent);

        // 调用服务层方法验证用户
        int result = register_loginService.loginUser(identification, password, roleString);

        if (result > 0) {
            httpServletRequest.getSession().setAttribute("loginUsername", identification);
            // 根据角色重定向到不同的页面
            if (user.getRole() == User.Role.STUDENT) {

                return "student/all-student-index"; // 学生重定向到学生主页
            } else if (user.getRole() == User.Role.TEACHER) {
                return "teacher/all-teacher-index"; // 教师重定向到教师主页
            } else {
                model.addAttribute("error", "未知角色");
                return "all-login"; // 未知角色返回注册页面
            }
        } else {
            model.addAttribute("error", "注册失败");
            return "all-login"; // 注册失败，返回注册页面
        }
    }
}
