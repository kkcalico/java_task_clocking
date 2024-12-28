package com.hstc.task_clocking.dao;

import com.hstc.task_clocking.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

@Mapper
public interface Register_LoginMapper {
    public int registerUser(User user);

    public int loginUser(@Param("identification") String identification,
                         @Param("password") String password,
                         @Param("role") String role);
}
