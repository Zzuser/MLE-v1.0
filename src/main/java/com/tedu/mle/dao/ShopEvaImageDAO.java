package com.tedu.mle.dao;

import com.tedu.mle.entity.ShopEvaImage;
import org.springframework.stereotype.Repository;

@Repository
public interface ShopEvaImageDAO {
    int deleteByPrimaryKey(Long shopEvaImageId);

    int insert(ShopEvaImage record);

    int insertSelective(ShopEvaImage record);

    ShopEvaImage selectByPrimaryKey(Long shopEvaImageId);

    int updateByPrimaryKeySelective(ShopEvaImage record);

    int updateByPrimaryKey(ShopEvaImage record);
}