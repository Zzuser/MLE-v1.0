package com.tedu.mle.dao;

import com.tedu.mle.entity.DishCategory;
import org.springframework.stereotype.Repository;

@Repository
public interface DishCategoryDAO {
    int deleteByPrimaryKey(Long dishCategoryId);

    int insert(DishCategory record);

    int insertSelective(DishCategory record);

    DishCategory selectByPrimaryKey(Long dishCategoryId);

    int updateByPrimaryKeySelective(DishCategory record);

    int updateByPrimaryKey(DishCategory record);
}