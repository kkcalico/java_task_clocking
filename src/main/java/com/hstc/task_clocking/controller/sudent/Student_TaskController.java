package com.hstc.task_clocking.controller.sudent;

import com.hstc.task_clocking.entity.Task;
import com.hstc.task_clocking.entity.User;
import com.hstc.task_clocking.service.UserService;
import com.hstc.task_clocking.service.student.Student_TaskService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("StudentTask")
public class Student_TaskController {
    @Autowired
    private Student_TaskService student_taskService;
    @Autowired
    private UserService userService;

    @RequestMapping("queryTaskList")
    public String queryTaskList(@RequestParam("ClassID") int classID, HttpServletRequest httpServletRequest) {
        List<Task> taskListsForStudent = student_taskService.QueryTaskWithClassID(classID);
        httpServletRequest.getSession().setAttribute("taskListsForStudent", taskListsForStudent);
        return "student/all-student-index"; // 成功返回页面
    }

    /**
     * 学生任务查看跳转
     *
     * @param httpServletRequest http接口请求（参数注入）
     * @return /all-student-tasks-view.jsp
     */
    @RequestMapping("toView")
    public String ViewEdit(@RequestParam("classId") int classId, HttpServletRequest httpServletRequest) {
        List<Task> taskListsForStudent = student_taskService.QueryTaskWithClassID(classId);
        httpServletRequest.getSession().setAttribute("taskListsForStudent", taskListsForStudent);
        return "student/all-student-tasks-view";
    }

    /**
     * 查看所属班级任务
     * @param homeworkID 任务表主键索引单个任务
     * @param classID 索引班级任务表单
     * @return
     */
    @RequestMapping(value = "toGetStudentTask", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> toGetUpdateTask(@RequestParam("homeworkID") int homeworkID, @RequestParam("classID") int classID) {
        // 获取任务列表
        List<Task> taskList = student_taskService.QueryTaskWithClassID(classID);
        Map<String, Object> responseMap = new HashMap<>();

        if (taskList != null && !taskList.isEmpty()) {
            // 使用 Stream API 找到与 homeworkID 匹配的 Task
            Task task = taskList.stream()
                    .filter(t -> t.getHomeworkID() == homeworkID)
                    .findFirst()
                    .orElse(null);

            if (task != null) {
                responseMap.put("homeworkID", task.getHomeworkID());
                responseMap.put("title", task.getTitle());
                responseMap.put("content", task.getContent());
                responseMap.put("startDate", task.getStartDate());
                responseMap.put("endDate", task.getEndDate());
                responseMap.put("deadline", task.getDeadline());
                responseMap.put("classID", task.getClassID());

                // 将 attachment 转换成 lastFile
                responseMap.put("lastFile", task.getAttachment());
            } else {
                // 如果没有找到匹配的任务
                responseMap.put("error", "没有找到对应的任务");
            }
        } else {
            // 任务列表为空
            responseMap.put("error", "没有找到对应的任务");
        }
        return responseMap;
    }


}
