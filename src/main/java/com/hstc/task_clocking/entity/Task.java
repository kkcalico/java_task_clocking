package com.hstc.task_clocking.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

@Data
public class Task {
    private int homeworkID;       // 任务的唯一标识符
    private String teacherID;     // 发布任务的教师ID
    private int classID;          // 发布任务的班级ID
    private String title;         // 任务标题
    private String content;       // 任务内容概述

    private String studentEmail;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime deadline; // 任务截止时间

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime startDate; // 任务开始时间

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime endDate;   // 任务结束时间

    private String attachment;    // 附件路径/链接

    // 构造方法
    public Task() {
    }

    public Task(int homeworkID, String teacherID, int classID, String title, String content,
                LocalDateTime deadline, LocalDateTime startDate, LocalDateTime endDate, String attachment) {
        this.homeworkID = homeworkID;
        this.teacherID = teacherID;
        this.classID = classID;
        this.title = title;
        this.content = content;
        this.deadline = deadline;
        this.startDate = startDate;
        this.endDate = endDate;
        this.attachment = attachment;
    }

    // Getter 和 Setter 方法
    public int getHomeworkID() {
        return homeworkID;
    }

    public void setHomeworkID(int homeworkID) {
        this.homeworkID = homeworkID;
    }

    public String getTeacherID() {
        return teacherID;
    }

    public void setTeacherID(String teacherID) {
        this.teacherID = teacherID;
    }

    public int getClassID() {
        return classID;
    }

    public void setClassID(int classID) {
        this.classID = classID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public LocalDateTime getDeadline() {
        return deadline;
    }

    public void setDeadline(LocalDateTime deadline) {
        this.deadline = deadline;
    }

    public LocalDateTime getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDateTime startDate) {
        this.startDate = startDate;
    }

    public LocalDateTime getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDateTime endDate) {
        this.endDate = endDate;
    }

    public String getAttachment() {
        return attachment;
    }

    public void setAttachment(String attachment) {
        this.attachment = attachment;
    }

    public String getStudentEmail() {
        return studentEmail;
    }

    public void setStudentEmail(String studentEmail) {
        this.studentEmail = studentEmail;
    }

    // toString 方法，方便打印对象信息
    @Override
    public String toString() {
        return "Task{" +
                "homeworkID=" + homeworkID +
                ", teacherID='" + teacherID + '\'' +
                ", classID=" + classID +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", deadline=" + deadline +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", attachment='" + attachment + '\'' +
                '}';
    }
}

