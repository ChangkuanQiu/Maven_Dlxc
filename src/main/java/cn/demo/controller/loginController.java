package cn.demo.controller;

import cn.demo.pojo.PsUser;
import cn.demo.service.PsUserService;
import cn.demo.util.MD5;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Scope("prototype")
@Controller("loginController")
@RequestMapping("/log")
public class loginController {

    @Autowired
    private PsUserService accountService;

    public PsUserService getAccountService() {
        return accountService;
    }

    public void setAccountService(PsUserService accountService) {
        this.accountService = accountService;
    }

    @RequestMapping(value = "/log",method = RequestMethod.POST)
    public String  login(PsUser a, HttpSession session) {
        //获取当前用户
        Subject currentuser= SecurityUtils.getSubject();
        //把用户名密码封装为usernamepasswordtoken的对象
        UsernamePasswordToken token=new UsernamePasswordToken(a.getUsercode(), MD5.getMd5(a.getUserpassword()));
        try {
            //进行登录验证
            currentuser.login(token);
        } catch(IncorrectCredentialsException e) {
            System.out.println("密码不正确");
        } catch (AuthenticationException e) {
            // TODO Auto-generated catch block
            System.out.println("账号不正确");
        }
        System.out.println("登录成功！！！！");
        return "redirect:/admin/index.jsp" ;

    }
    @RequestMapping("/getxjy")
    public @ResponseBody
    Map<String,Object> getxjy(Integer page, Integer rows) {
        if (page == null) {
            page=1;
        }
        List<PsUser> manlist = accountService.getUserxj(page,rows);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("total",5);
        map.put("rows" ,manlist);
        return map;
    }
}
