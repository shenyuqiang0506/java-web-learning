package com.shen.dao;

import com.shen.entity.Absent;

import java.util.List;

public interface AbsentDao {
    public Integer save(Absent absent);
    public List<Absent> list();
    public List<Absent> search(String key,String value);
}
