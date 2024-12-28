package com.hstc.task_clocking.service.impl;

import com.hstc.task_clocking.dao.UserMapper;
import com.hstc.task_clocking.entity.User;
import com.hstc.task_clocking.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    /**
     * 查看当前用户所有信息
     * @param identification 工号
     * @return
     */
    @Override
    public List<User> queryUserList(String identification) {
        return userMapper.selectUserByIdentification(identification);
    }
}
