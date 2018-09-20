package com.tedu.mle.shopend.controller;

import com.tedu.mle.shopend.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zz
 */
@Controller
@RequestMapping("/")
public class IndexController {
    @Autowired
    ShopService shopService;
    @RequestMapping("index")
    public String index() {
        return "shopend/starter";
    }

    
}
