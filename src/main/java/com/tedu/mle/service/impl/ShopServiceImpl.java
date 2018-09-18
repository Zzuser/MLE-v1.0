package com.tedu.mle.service.impl;

import com.tedu.mle.dao.ChildMenuDAO;
import com.tedu.mle.dao.FatherMenuDAO;
import com.tedu.mle.dao.ShopDAO;
import com.tedu.mle.entity.ChildMenu;
import com.tedu.mle.entity.FatherMenu;
import com.tedu.mle.entity.Shop;
import com.tedu.mle.service.ShopService;
import com.tedu.mle.vo.ShopVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * @author zz
 */
@Service
public class ShopServiceImpl implements ShopService {
    @Autowired
    ChildMenuDAO childMenuDAO;
    @Autowired
    ShopDAO shopDAO;
    @Autowired
    FatherMenuDAO fatherMenuDAO;


    @Override
    public ShopVo findShopVoByShopId(long shopId) {
        //1.根据主键查询店铺信息附带折扣列表
        Shop shop = new Shop();
        shop.setShopId(shopId);
        shop = shopDAO.selectWithDiscountList(shop).get(0);
        //2.根据商铺id查询主菜单信息
        FatherMenu fatherMenu = new FatherMenu();
        fatherMenu.setShopIdF(shopId);
        fatherMenu = fatherMenuDAO.selectSelective(fatherMenu).get(0);
        //3.根据总菜单id查询子菜单信息附带菜品列表
        ChildMenu childMenu = new ChildMenu();
        childMenu.setFatherMenuIdF(fatherMenu.getFatherMenuId());
        List<ChildMenu> childMenus = childMenuDAO.selectWithDishList(childMenu);
        //4.构建商铺VO
        ShopVo shopVo = new ShopVo();
        shopVo.setShop(shop);
        shopVo.setFatherMenu(fatherMenu);
        shopVo.setChildMenuList(childMenus);
        return shopVo;
    }

    @Override
    public ShopVo findFatherMenuById(Long fatherMenuId) {
        //1.根据主键查询店铺信息附带折扣列表
        FatherMenu fatherMenu = fatherMenuDAO.selectByPrimaryKey(fatherMenuId);
        //3.根据总菜单id查询子菜单信息附带菜品列表
        ChildMenu childMenu = new ChildMenu();
        childMenu.setFatherMenuIdF(fatherMenu.getFatherMenuId());
        List<ChildMenu> childMenus = childMenuDAO.selectWithDishList(childMenu);
        //4.构建商铺VO
        ShopVo shopVo = new ShopVo();
        shopVo.setFatherMenu(fatherMenu);
        shopVo.setChildMenuList(childMenus);
        return shopVo;
    }

    @Override
    public List<FatherMenu> findAllFatherMenuByShopId(Long shopId) {
        //2.根据商铺id查询主菜单信息
        if (shopId == null || shopId == 0) {
            throw new IllegalArgumentException("参数不正确");
        }
        FatherMenu fatherMenu = new FatherMenu();
        fatherMenu.setShopIdF(shopId);
        List<FatherMenu> fatherMenus = fatherMenuDAO.selectSelective(fatherMenu);
        return fatherMenus;
    }

    @Override
    public void activeFatherMenu(Long fatherMenuId, Long shopIdF) {
        //1,根据店铺id关闭所有总菜单
        fatherMenuDAO.offFatherMenu(shopIdF);
        //2，根据总菜单id激活总菜单
        fatherMenuDAO.activeFatherMenu(fatherMenuId);
    }

}
