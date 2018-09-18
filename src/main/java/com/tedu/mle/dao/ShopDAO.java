package com.tedu.mle.dao;

import com.tedu.mle.entity.Shop;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 店铺有关dao
 *
 * @author zz
 */
@Repository
public interface ShopDAO {
    /**
     * 根据主键删除店铺
     *
     * @param shopId 店铺id
     * @return 影响行数
     */
    int deleteByPrimaryKey(Long shopId);

    /**
     * 插入店铺
     *
     * @param record 要插入的店铺
     * @return 影响行数
     */
    int insert(Shop record);

    /**
     * 根据主键查询店铺
     *
     * @param shopId 店铺id
     * @return 查询结果
     */
    Shop selectByPrimaryKey(Long shopId);

    /**
     * 更新店铺信息
     *
     * @param record 要更新的信息
     * @return 影响行数
     */
    int updateByPrimaryKeySelective(Shop record);

    /**
     * 查询店铺附带店铺折扣信息
     *
     * @param shop 店铺id，名称，或电话
     * @return 查询结果
     */
    List<Shop> selectWithDiscountList(Shop shop);

    /**
     * 根据分类id查询店铺附带折扣信息
     *
     * @param categoryId 店铺分类id
     * @return 查询结果
     */
    List<Shop> selectWithDiscountListByCategoryId(long categoryId);
}