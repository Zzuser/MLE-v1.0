package com.tedu.mle.controller;

import com.tedu.mle.service.ShopService;
import com.tedu.mle.vo.ShopVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
        return "starter";
    }

    
}
