package com.hstc.task_clocking.entity;

import lombok.Data;

@Data
public class User {

    public enum Role {
        STUDENT, // 学生
        TEACHER  // 教师
    }

    private int userId;         // 用户唯一标识
    private Role role;          // 用户角色（学生/教师）
    private String name;        // 用户姓名
    private String identification; // 学生学号/教师教工号
    private int classId;        // 学生班级ID（教师为0）
    private String password;    // 用户密码（加密存储）

    // 无参构造器
    public User() {}

    // 全参构造器
    public User(int userId, Role role, String name, String identification, int classId, String password) {
        this.userId = userId;
        this.role = role;
        this.name = name;
        this.identification = identification;
        this.classId = classId;
        this.password = password;
    }

    // Getter 和 Setter 方法
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIdentification() {
        return identification;
    }

    public void setIdentification(String identification) {
        this.identification = identification;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    // toString 方法
    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", role=" + role +
                ", name='" + name + '\'' +
                ", identification='" + identification + '\'' +
                ", classId=" + classId +
                ", password='" + password + '\'' +
                '}';
    }
}

