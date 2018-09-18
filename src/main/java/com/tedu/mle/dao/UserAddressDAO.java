package com.tedu.mle.dao;

import com.tedu.mle.entity.UserAddress;
import org.springframework.stereotype.Repository;

@Repository
public interface UserAddressDAO {
    int deleteByPrimaryKey(Long userAddressId);

    int insert(UserAddress record);

    int insertSelective(UserAddress record);

    UserAddress selectByPrimaryKey(Long userAddressId);

    int updateByPrimaryKeySelective(UserAddress record);

    int updateByPrimaryKey(UserAddress record);
}