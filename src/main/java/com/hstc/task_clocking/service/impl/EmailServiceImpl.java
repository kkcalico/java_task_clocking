package com.hstc.task_clocking.service.impl;

import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl {
    public void sendEmail(String to, String subject, String body) {
        // 这里使用邮件发送的相关逻辑来发送邮件
        System.out.println("Sending email to: " + to);
        System.out.println("Subject: " + subject);
        System.out.println("Body: " + body);
    }
}
