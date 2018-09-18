package com.tedu.mle.dao;

import com.tedu.mle.entity.MleOrder;
import org.springframework.stereotype.Repository;

@Repository
public interface MleOrderDAO {
    int deleteByPrimaryKey(Long orderId);

    int insert(MleOrder record);

    int insertSelective(MleOrder record);

    MleOrder selectByPrimaryKey(Long orderId);

    int updateByPrimaryKeySelective(MleOrder record);

    int updateByPrimaryKey(MleOrder record);
}