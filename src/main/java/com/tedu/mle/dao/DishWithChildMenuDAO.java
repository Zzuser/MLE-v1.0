package com.tedu.mle.dao;

import com.tedu.mle.entity.DishWithChildMenu;
import org.springframework.stereotype.Repository;

@Repository
public interface DishWithChildMenuDAO {
    int deleteByPrimaryKey(Long id);

    int insert(DishWithChildMenu record);

    int insertSelective(DishWithChildMenu record);

    DishWithChildMenu selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(DishWithChildMenu record);

    int updateByPrimaryKey(DishWithChildMenu record);
}