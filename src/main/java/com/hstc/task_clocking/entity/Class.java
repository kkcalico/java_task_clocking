package com.hstc.task_clocking.entity;

import lombok.Data;

@Data
public class Class {
    private int classID;  // 班级唯一标识（主键）
    private String className;  // 班级名称
    private User teacher;  // 班主任ID（外键，关联用户表）

    // Getters and Setters
    public int getClassID() {
        return classID;
    }

    public void setClassID(int classID) {
        this.classID = classID;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public User getTeacher() {
        return teacher;
    }

    public void setTeacher(User teacher) {
        this.teacher = teacher;
    }

    @Override
    public String toString() {
        return "Class{" +
                "classID=" + classID +
                ", className='" + className + '\'' +
                ", teacher=" + teacher +
                '}';
    }
}
