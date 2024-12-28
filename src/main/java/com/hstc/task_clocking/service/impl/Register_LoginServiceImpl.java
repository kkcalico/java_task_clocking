package com.hstc.task_clocking.service.impl;

import com.hstc.task_clocking.entity.User;
import com.hstc.task_clocking.service.Register_LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hstc.task_clocking.dao.Register_LoginMapper;

@Service
public class Register_LoginServiceImpl implements Register_LoginService {
    @Autowired
    private Register_LoginMapper register_loginMapper;

    /**
     * 注册
     * @param user user表
     * @return
     */
    @Override
    public int registerUser(User user) {
        return register_loginMapper.registerUser(user);
    }

    /**
     * 登录
     * @param identification 工号
     * @param password 密码
     * @param role 职位
     * @return
     */
    @Override
    public int loginUser(String identification, String password, String role) {
        return register_loginMapper.loginUser(identification, password, role);
    }
}
