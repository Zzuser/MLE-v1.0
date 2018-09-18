package com.tedu.mle.service;

import com.tedu.mle.entity.FatherMenu;
import com.tedu.mle.vo.ShopVo;

import java.util.List;

/**
 * 店铺service
 *
 * @author zz
 */
public interface ShopService {
    /**
     * 根据商铺id查询商铺VO
     *
     * @param shopId 商铺id
     * @return 商铺VO
     */
    ShopVo findShopVoByShopId(long shopId);

    /**
     * 根据主菜单id获取主菜单及其下属子菜单列表
     *
     * @param fatherMenuId 主菜单id
     * @return 主菜单及其下属子菜单列表
     */
    ShopVo findFatherMenuById(Long fatherMenuId);

    /**
     * 根据商铺id查询商铺所有菜单方案
     * @param shopId 商铺id
     * @return 菜单方案列表
     */
    List<FatherMenu> findAllFatherMenuByShopId(Long shopId);

    /**
     * 根据总菜单id激活总菜单并关闭其他激活的菜单
     * @param fatherMenuId 总菜单id
     * @param shopIdF 店铺id
     */
    void activeFatherMenu(Long fatherMenuId,Long shopIdF);

}
