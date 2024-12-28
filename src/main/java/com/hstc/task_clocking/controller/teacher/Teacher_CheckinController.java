package com.hstc.task_clocking.controller.teacher;

import com.hstc.task_clocking.entity.Checkin;
import com.hstc.task_clocking.entity.Task;
import com.hstc.task_clocking.entity.User;
import com.hstc.task_clocking.service.UserService;
import com.hstc.task_clocking.service.student.Student_CheckinService;
import com.hstc.task_clocking.service.student.Student_TaskService;
import com.hstc.task_clocking.service.teacher.Teacher_CheckinService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("TeacherCheckin")
public class Teacher_CheckinController {
    @Autowired
    private UserService userService;
    @Autowired
    private Student_TaskService student_taskService;
    @Autowired
    private Teacher_CheckinService teacher_checkinService;
    @Autowired
    private Student_CheckinService student_checkinService;

    /**
     * 查看发布任务完成情况
     * @param httpServletRequest
     * @param checkin 任务表
     * @return
     */
    @RequestMapping("toSelect")
    public String CheckinSelect(HttpServletRequest httpServletRequest, Checkin checkin) {
      List<Checkin> checkinListsForTeacher = teacher_checkinService.QueryCheckinList();
      httpServletRequest.getSession().setAttribute("checkinListsForTeacher", checkinListsForTeacher);
      return "teacher/all-teacher-checkin-select";
    }

    /**
     * 教师打回作业
     * @param checkinId 打回作业编号
     * @param httpServletRequest
     * @param checkin
     * @return
     */
    @RequestMapping("callbackCheckin")
    public String callbackCheckin(@RequestParam("checkinId") int checkinId, HttpServletRequest httpServletRequest, Checkin checkin) {
        int task = teacher_checkinService.CallbackCheckin(checkinId);
        System.out.println(checkin);
        List<Checkin> checkinListsForTeacher = teacher_checkinService.QueryCheckinList();
        httpServletRequest.getSession().setAttribute("checkinListsForTeacher", checkinListsForTeacher);
        return "teacher/all-teacher-checkin-select";
    }

    @RequestMapping("detailedCheckin")
    public String detailedCheckin(@RequestParam("classId") int classId, @RequestParam("checkId") int checkId,
                                  @RequestParam("identification") String identification, HttpServletRequest httpServletRequest) {
        List<User> userLists = userService.queryUserList(identification);
        httpServletRequest.getSession().setAttribute("userLists", userLists);

        List<Task> taskListsForStudent = student_taskService.QueryTaskWithClassID(classId);
        httpServletRequest.getSession().setAttribute("taskListsForStudent", taskListsForStudent);

        List<Checkin> checkinListsForTeacher = teacher_checkinService.QueryCheckinList();
        httpServletRequest.getSession().setAttribute("checkinListsForTeacher", checkinListsForTeacher);
        return "teacher/all-teacher-checkin-detailed-hide";
    }
}
