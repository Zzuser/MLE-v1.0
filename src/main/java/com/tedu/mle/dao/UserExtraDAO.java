package com.tedu.mle.dao;

import com.tedu.mle.entity.UserExtra;
import org.springframework.stereotype.Repository;

@Repository
public interface UserExtraDAO {
    int deleteByPrimaryKey(Long userExtraId);

    int insert(UserExtra record);

    int insertSelective(UserExtra record);

    UserExtra selectByPrimaryKey(Long userExtraId);

    int updateByPrimaryKeySelective(UserExtra record);

    int updateByPrimaryKey(UserExtra record);
}