package com.tedu.mle.dao;

import com.tedu.mle.entity.ShopWithCategory;
import org.springframework.stereotype.Repository;

@Repository
public interface ShopWithCategoryDAO {
    int deleteByPrimaryKey(Long id);

    int insert(ShopWithCategory record);

    int insertSelective(ShopWithCategory record);

    ShopWithCategory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ShopWithCategory record);

    int updateByPrimaryKey(ShopWithCategory record);
}