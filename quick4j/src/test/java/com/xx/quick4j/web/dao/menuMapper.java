package com.xx.quick4j.web.dao;

import com.xx.quick4j.web.model.menu;

public interface menuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(menu record);

    int insertSelective(menu record);

    menu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(menu record);

    int updateByPrimaryKey(menu record);
}