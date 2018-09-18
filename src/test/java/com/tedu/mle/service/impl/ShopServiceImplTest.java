package com.tedu.mle.service.impl;

import com.tedu.mle.BaseTest;
import com.tedu.mle.service.ShopService;
import com.tedu.mle.vo.ShopVo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class ShopServiceImplTest extends BaseTest {
    @Autowired
    ShopService shopService;

    @Test
    public void findShopVoByShopId() {
        ShopVo shopVo = shopService.findShopVoByShopId(1L);
        System.out.println(shopVo);
    }
}