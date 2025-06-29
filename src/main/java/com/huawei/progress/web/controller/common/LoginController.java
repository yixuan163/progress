package com.huawei.progress.web.controller.common;

import com.huawei.progress.biz.model.UserModel;
import com.huawei.progress.biz.common.service.UserService;
import org.apache.tomcat.jni.Mmap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;
@RestController
public class LoginController {
    //将Service注入Web层
    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String show(){
        return "login";
    }
    @RequestMapping(value = "/loginIns",method = RequestMethod.POST)
    public String login( @RequestBody UserModel userModel){
        UserModel userModel1 = userService.loginIn(userModel.getName(),userModel.getPassword());
        if(userModel1 !=null){
            return "success";
        }else {
            return "error";
        }
    }
}
