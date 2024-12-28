package com.hstc.task_clocking.controller.sudent;

import com.hstc.task_clocking.entity.Checkin;
import com.hstc.task_clocking.entity.Task;
import com.hstc.task_clocking.service.student.Student_CheckinService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("StudentCheckin")
public class Student_CheckinController {
    @Autowired
    private Student_CheckinService student_checkinService;

    @RequestMapping("submitTask")
    public String TaskAddSave(@RequestParam("ClassID") int classId, MultipartFile uploadFile_Student,
                              HttpServletRequest httpServletRequest, Checkin checkin,
                              RedirectAttributes redirectAttributes){
        System.out.println("uploadFile" + uploadFile_Student);
        // 调用业务逻辑保存任务
        if (uploadFile_Student != null) {
            String originalFileName = uploadFile_Student.getOriginalFilename();
            String pathString = httpServletRequest.getServletContext().getRealPath("/document/student-submits");
            File filePath = new File(pathString);
            // 设置任务的附件名
            checkin.setAttachment("/document/student-submits" + originalFileName);

            if (!filePath.exists()) {
                filePath.mkdirs();  // 确保文件夹存在
            }

            String fullFileName = pathString + "/" + originalFileName;
            File file = new File(fullFileName);

            // 不存在改文件，上传文件
            if (!file.exists()) {
                try {
                    // 上传文件
                    uploadFile_Student.transferTo(new File(fullFileName));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
         /*
        学生提交任务
         */
        int val = student_checkinService.AddCheckin(checkin);

        /*
        重定向发送classId已用于主页面检索作业
         */
        redirectAttributes.addAttribute("ClassID", classId);
        if (val != 0) {
            /*
            学生的打卡表,检测是否完成作业
            */
            List<Checkin> checkinListsForStudent = student_checkinService.QueryCheckinList();
            httpServletRequest.getSession().setAttribute("checkinListsForStudent", checkinListsForStudent);
            return "redirect:/StudentTask/queryTaskList";
        } else {
            return "student/all-student-tasks-view";
        }
    }
}
