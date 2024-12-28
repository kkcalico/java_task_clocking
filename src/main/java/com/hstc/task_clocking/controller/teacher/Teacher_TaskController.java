package com.hstc.task_clocking.controller.teacher;

import com.hstc.task_clocking.entity.Task;
import com.hstc.task_clocking.service.ClassService;
import com.hstc.task_clocking.service.UserService;
import com.hstc.task_clocking.service.teacher.Teacher_TaskService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.awt.print.Pageable;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

@Controller
@RequestMapping("TeacherTask")
public class Teacher_TaskController {
    @Autowired
    private Teacher_TaskService teacherTaskService;

    /**
     * 查询所有发布的任务
     * @param httpServletRequest http接口请求（参数注入）
     * @return 主页面 teacher/all-teacher-index.jsp
     */
    @RequestMapping("queryTaskList")
    public String queryTaskList(@RequestParam String teacherID, HttpServletRequest httpServletRequest) {
        List<Task> taskLists = teacherTaskService.QueryTaskWithTeacherID(teacherID);
        httpServletRequest.getSession().setAttribute("taskLists", taskLists);
        return "teacher/all-teacher-index"; // 成功返回页面
    }

    /**
     * 发布任务页面跳转
     *
     * @return all-teacher-tasks-edit.jsp
     */
    @RequestMapping("toAdd")
    public String AddEdit() {
        return "teacher/all-teacher-tasks-add";
    }

    /**
     * 编辑任务页面跳转
     *
     * @param httpServletRequest http接口请求（参数注入）
     * @return /all-teacher-tasks-update.jsp
     */
    @RequestMapping("toUpdate")
    public String UpdateEdit(@RequestParam String teacherID, HttpServletRequest httpServletRequest) {
        List<Task> taskLists = teacherTaskService.QueryTaskWithTeacherID(teacherID);
        httpServletRequest.getSession().setAttribute("taskLists", taskLists);
        return "teacher/all-teacher-tasks-update";
    }

    /**
     * 教师删除任务
     * @param homeworkID 主键标识符
     * @param task
     * @param model
     * @return 重定向查询任务
     */
    @RequestMapping("toDelete")
    public String TaskDelete(@RequestParam("teacherID") String teacherID, @RequestParam("homeworkID") int homeworkID,
                             RedirectAttributes redirectAttributes, Task task, Model model) {
        teacherTaskService.DeleteTask(homeworkID);
        redirectAttributes.addAttribute("teacherID", teacherID);
        return "redirect:queryTaskList";
    }

    /**
     * 选择要修改的已发布任务表
     * @param homeworkID 任务表主键
     * @return
     */
    @RequestMapping(value = "toGetUpdateTask", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> toGetUpdateTask(@RequestParam("homeworkID") int homeworkID) {
        Task task = teacherTaskService.QueryTaskWithHomeworkID(homeworkID);
        Map<String, Object> responseMap = new HashMap<>();
        if (task != null) {
            responseMap.put("homeworkID", task.getHomeworkID());
            responseMap.put("title", task.getTitle());
            responseMap.put("content", task.getContent());
            responseMap.put("startDate", task.getStartDate());
            responseMap.put("endDate", task.getEndDate());
            responseMap.put("deadline", task.getDeadline());
            responseMap.put("classID", task.getClassID());
            responseMap.put("teacherID", task.getTeacherID());

            // 将 attachment 转换成 lastFile
            responseMap.put("lastFile", task.getAttachment());
        }
        return responseMap;
    }

    /**
     * 更新（修改）所选任务
     *
     * @param uploadFile
     * @param httpServletRequest http接口请求（参数注入）
     * @param task
     * @return
     */
    @RequestMapping("updateSave")
    public String TaskUpdateSave(@RequestParam("teacherID") String teacherID, MultipartFile uploadFile,
                                 HttpServletRequest httpServletRequest, RedirectAttributes redirectAttributes, Task task) {
        if (uploadFile != null) {
            String originalFileName = uploadFile.getOriginalFilename();
            String pathString = httpServletRequest.getServletContext().getRealPath("/document/teacher-uploads");
            System.out.println("pathString: " + pathString);
            File filePath = new File(pathString);
            task.setAttachment("/document/teacher-uploads/" + originalFileName);

            String fullFileName = pathString + "/" + originalFileName;
            File file = new File(fullFileName);

            // 不存在改文件，上传文件
            if(!file.exists()) {
                try {
                    // 设置任务的附件名
                    // 上传文件
                    uploadFile.transferTo(new File(fullFileName));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        /*
        教师发布任务表
         */
        int val = teacherTaskService.UpdateTask(task);
        if (val != 0) {
            redirectAttributes.addAttribute("teacherID", teacherID);
            return "redirect:queryTaskList";
        } else {
            return "teacher/all-teacher-tasks-update";
        }
    }

    /**
     * 上传发布任务
     *
     *  @param httpServletRequest http接口请求（参数注入）
     * @param task 任务表
     * @param model
     * @return
     */
    @RequestMapping("addSave")
    public String TaskAddSave(MultipartFile uploadFile, HttpServletRequest httpServletRequest,
                              RedirectAttributes redirectAttributes,
                              @RequestParam("teacherID") String teacherID,
                              @RequestParam("deadline") @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime deadline,
                              Task task, Model model) {
        System.out.println("uploadFile" + uploadFile);
        // 调用业务逻辑保存任务
        if (uploadFile != null) {
            String originalFileName = uploadFile.getOriginalFilename();
            String pathString = httpServletRequest.getServletContext().getRealPath("/document/teacher-uploads");
            File filePath = new File(pathString);
            // 设置任务的附件名
            task.setAttachment("/document/teacher-uploads" + originalFileName);

            if (!filePath.exists()) {
                filePath.mkdirs();  // 确保文件夹存在
            }

            String fullFileName = pathString + "/" + originalFileName;
            File file = new File(fullFileName);

            // 不存在改文件，上传文件
            if(!file.exists()) {
                try {
                    // 上传文件
                    uploadFile.transferTo(new File(fullFileName));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        // 获取时间部分并格式化为 "HH:mm:ss"
        String formattedTime = deadline.toLocalTime().format(DateTimeFormatter.ofPattern("HH:mm:ss"));

        // 获取当前日期并与时间部分组合
        LocalDate currentDate = LocalDate.now();  // 获取当前日期
        LocalDateTime newDeadline = LocalDateTime.of(currentDate, LocalTime.parse(formattedTime));  // 组合日期和时间

        // 设置新的 LocalDateTime 到任务对象
        task.setDeadline(newDeadline);  // 使用 LocalDateTime 存储日期和时间
        /*
        教师发布任务表
         */
        int val = teacherTaskService.AddTask(task);
        if (val != 0) {
            redirectAttributes.addAttribute("teacherID", teacherID);
            return "redirect:queryTaskList";
        } else {
            return "teacher/all-teacher-tasks-add";
        }
    }
}


