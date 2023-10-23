package com.shen.dao;

import com.shen.entity.SystemAdmin;

public interface SystemAdminDao {
    public SystemAdmin findByUsername(String username);
}
