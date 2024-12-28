package com.hstc.task_clocking.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.Date;

public class Checkin {

    private int checkinId; // 签到ID
    private String userId; // 用户ID
    private int taskId; // 任务ID
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime checkinTime; // 签到时间
    private String content; // 签到内容
    private String attachment; // 附件（可选）
    private CheckinStatus status; // 签到状态

    // 签到状态的枚举
    public enum CheckinStatus {
        已确认, 未确认
    }

    // Getter和Setter方法
    public int getCheckinId() {
        return checkinId;
    }

    public void setCheckinId(int checkinId) {
        this.checkinId = checkinId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getTaskId() {
        return taskId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public LocalDateTime getCheckinTime() {
        return checkinTime;
    }

    public void setCheckinTime(LocalDateTime checkinTime) {
        this.checkinTime = checkinTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAttachment() {
        return attachment;
    }

    public void setAttachment(String attachment) {
        this.attachment = attachment;
    }

    public CheckinStatus getStatus() {
        return status;
    }

    public void setStatus(CheckinStatus status) {
        this.status = status;
    }

    // 构造方法
    public Checkin(String userId, int taskId, LocalDateTime checkinTime, String content, String attachment, CheckinStatus status) {
        this.userId = userId;
        this.taskId = taskId;
        this.checkinTime = checkinTime;
        this.content = content;
        this.attachment = attachment;
        this.status = status;
    }

    // 默认构造方法
    public Checkin() {}

    @Override
    public String toString() {
        return "Checkin{" +
                "checkinId=" + checkinId +
                ", userId='" + userId + '\'' +
                ", taskId=" + taskId +
                ", checkinTime=" + checkinTime +
                ", content='" + content + '\'' +
                ", attachment='" + attachment + '\'' +
                ", status=" + status +
                '}';
    }
}


