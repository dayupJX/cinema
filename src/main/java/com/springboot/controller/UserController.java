package com.springboot.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.RestTest;
import com.springboot.domain.User;
import com.springboot.service.UserService;
import com.springboot.utils.ImageUtils;
import com.springboot.utils.UUIDUtils;

@Controller
//@Validated
public class UserController {

    private String code6;

    @Autowired
    UserService userService;

    @RequestMapping("/sentCode6")
    @ResponseBody
    public void sentCode6(String mobile) {
        code6 = UUIDUtils.createCode6();
        System.out.println(code6);
        RestTest.testSendSms("2df20dd029535e177a0233f89c5987b7",
                "0e19aa95a7b1450e79883947d6ca95ae",
                "b507b779f9b5464bb50b9ff0fc91755d",
                "366225", code6, mobile, "");
    }

    @RequestMapping("loginUI")
    public String loginUI() {
        return "login";
    }

    @RequestMapping("registerUI")
    public String registerUI() {
        return "register";
    }

    @RequestMapping("/login")
    public String login(String telephone, String password, Model model, HttpServletRequest request, HttpServletResponse response) {
        //处理验证码
        if (!ImageUtils.checkVerifyCode(request)) {
            model.addAttribute("msg","验证码有误！");
            return "/login";
        }


        //处理账号密码
        User user = userService.getUserByUnAndPw(telephone, password);
        if(user != null) {
            //request.getSession().setAttribute("user", user);
            String ticket = userService.insertLoginTicket(user.getUid());

            Cookie cookie = new Cookie("ticket", ticket);
            cookie.setPath("/");
            cookie.setMaxAge(3600*24*5);
            response.addCookie(cookie);

            return "redirect:/";
        } else {
            model.addAttribute("msg", "手机号或密码错误");
            return "/login";
        }
    }


    @RequestMapping("register")
    public String register( @Validated User user, BindingResult bindingResult,
                            HttpServletRequest request, Model model) {
        String graphIdentity = request.getParameter("graphIdentity");
        String phoneIdentity = request.getParameter("phoneIdentity");

        if(!ImageUtils.checkVerifyCode(request,graphIdentity)) {
            System.out.println("图形验证码错误。。。。。。。。。。。。");
            model.addAttribute("msg", "图形验证码错误");
            return "register";
        }

        if (!phoneIdentity.equals(code6)) {
            System.out.println("手机验证码错误。。。。。。。。。。。。");
            System.out.println("#########"+phoneIdentity);
            System.out.println("#########"+code6);
            model.addAttribute("msg", "图形验证码错误");
            return "register";
        }

        if(bindingResult.hasErrors()){
            System.out.println("格式错误。。。。。。。。。。。。");
            model.addAttribute("msg", "请按正确格式填写注册信息");
            return "register";
        }

        user.setUid(UUIDUtils.getId());
        user.setCreatetime(new Date());
        if(userService.insertUser(user)) {
            return "/index";
        } else {
            model.addAttribute("msg", "注册失败，请重新注册");
            return "register";
        }
    }



    @RequestMapping("validate/password")
    @ResponseBody
    //验证密码是否一致
    public String validatePassword( String password1, String password2) {
        if(password1 != null && !("".equals(password1.trim()))
                && password2 != null && !("".equals(password2.trim()))
                && password1.equals(password2)) {
            return "ok";
        } else {
            return "fail";
        }
    }

    @RequestMapping("/validate/{index}")
    @ResponseBody
    public String validate(@PathVariable(value="index") String flag, String param, HttpServletRequest request) {
        String rt = null;
        switch (flag) {

            //验证手机号码格式
            case "telephone":
                System.out.println(param);
                if(param.matches("^1(3|4|5|7|8)\\d{9}$")) {
                    rt =  "ok";
                } else {
                    rt = "fail";
                }
                break;



            //验证手机验证码的格式
            case "phoneIdentity":
                System.out.println(param);
                if(param.matches("^\\d{4}$")) {
                    rt =  "ok";
                } else {
                    rt = "fail";
                }
                break;

            //验证真实姓名是否为null或“”
            case "name":
                System.out.println(param);
                if(param == null || "".equals(param.trim())) {
                    rt =  "fail";
                } else {
                    rt = "ok";
                }
                break;

            //验证emial的格式
            case "email":
                System.out.println(param);
                if(param.matches("\\w+(.\\w+)*@(\\w)+((.\\w+)+)")) {
                    rt =  "ok";
                } else {
                    rt = "fail";
                }
                break;
        }

        return rt;
    }




}
