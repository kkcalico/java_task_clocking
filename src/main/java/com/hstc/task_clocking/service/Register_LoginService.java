package com.hstc.task_clocking.service;

import com.hstc.task_clocking.entity.User;

public interface Register_LoginService {
    public int registerUser(User user);  // 注册
    public int loginUser(String identification, String password, String role);  // 登录
}
