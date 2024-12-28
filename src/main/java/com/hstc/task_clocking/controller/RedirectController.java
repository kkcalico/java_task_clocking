package com.hstc.task_clocking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/redirect")
public class RedirectController {

    /**
     * 选择跳转回用户所属页面
     * @param type
     * @return
     */
    @GetMapping("/toHome")
    public String redirectToHome(@RequestParam("type") String type) {
        if ("teacher".equals(type)) {
            return "teacher/all-teacher-index";
        } else if ("student".equals(type)) {
            return "student/all-student-index";
        } else {
            return "404";
        }
    }
}