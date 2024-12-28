package com.hstc.task_clocking.service;

import com.hstc.task_clocking.entity.User;

import java.util.List;

public interface UserService {
    public List<User> queryUserList(String identification);
}
