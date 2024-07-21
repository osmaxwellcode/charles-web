package io.charles.project.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页
 *
 * @author charles
 */
@Controller
public class SysIndexController {

    /**
     * 访问首页，提示语
     */
    @RequestMapping({"/", "/manager/**"})
    public String index() {
        return "forward:/static/manager/index.html";
    }
}
