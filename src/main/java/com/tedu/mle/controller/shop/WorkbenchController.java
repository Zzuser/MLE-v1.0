package com.tedu.mle.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zz
 */
@Controller
@RequestMapping("workbench")
public class WorkbenchController {

    @RequestMapping("doGetWorkbenchUI")
    public String doGetWorkbenchUI() {
        return "workbench/workbench";
    }
}
