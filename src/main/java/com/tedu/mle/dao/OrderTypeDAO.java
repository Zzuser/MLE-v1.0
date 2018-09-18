package com.tedu.mle.dao;

import com.tedu.mle.entity.OrderType;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderTypeDAO {
    int deleteByPrimaryKey(Long orderTypeId);

    int insert(OrderType record);

    int insertSelective(OrderType record);

    OrderType selectByPrimaryKey(Long orderTypeId);

    int updateByPrimaryKeySelective(OrderType record);

    int updateByPrimaryKey(OrderType record);
}