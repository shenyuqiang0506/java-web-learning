package com.shen.service;

import com.shen.dto.SystemAdminDto;

public interface SystemAdminService {
    public SystemAdminDto login(String username,String password);
}
