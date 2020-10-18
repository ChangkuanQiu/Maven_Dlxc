package cn.demo.shior;

import cn.demo.pojo.PsRole;
import cn.demo.pojo.PsRolePremission;
import cn.demo.pojo.PsUser;
import cn.demo.redis.RedisCacheUtil;
import cn.demo.service.PsUserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

public class MyShiroRealm extends AuthorizingRealm {
    @Autowired
    private PsUserService PsuserService;
    @Autowired
    private RedisCacheUtil redisCache;

    public RedisCacheUtil getRedisCache() {
        return redisCache;
    }

    public void setRedisCache(RedisCacheUtil redisCache) {
        this.redisCache = redisCache;
    }

    public PsUserService getPsuserService() {
        return PsuserService;
    }

    public void setPsuserService(PsUserService psuserService) {
        PsuserService = psuserService;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection pc) {
// TODO Auto-generated method stub
        System.out.println("shior获取权限");
        System.out.println("权限认证!!!!!!!!");
        //获取权限认证的主要主要身份:用户名实体属性
        PsUser users=(PsUser)pc.getPrimaryPrincipal() ;
        System.out.println("权限认证的用户:"+users.getUsercode());
        //根据用户信息获取用户的角色
        System.out.println("权限认证的用户的角色:"+users.getPsRole().getRolename());
        //shior提供这个类存放身份权限
        SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
        PsRole list= PsuserService.findFunctioncode(users.getPsRole().getId());
        //遍历每个角色的权限
        for (PsRolePremission res :  list.getPsRolePremissions()) {
            //把角色的权限信息保存到对象当中
            info.addStringPermission(res.getFunctioncode()+"");
        }
        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        UsernamePasswordToken utoken=(UsernamePasswordToken) token;
        String Usercod=utoken.getUsername();
       String Pwd=String.valueOf(utoken.getPassword());
        System.out.println("登录前获取到的登录名"+Usercod+"密码:"+Pwd);
        //从redia中检测有没有集合
        if(!redisCache.hasKey("psUserList")){
            //如果没有检测到,则从数据库查询数据放到Redistribution缓存中
            List<PsUser> psUserList=PsuserService.getUserList();
            redisCache.lSet("psUserList",psUserList);
        }
        int foundcount=0;
        SimpleAuthenticationInfo info=null;
        List<Object> psuser=redisCache.lGet("psUserList",0,-1);
        ArrayList<PsUser> users= (ArrayList<PsUser>)psuser.get(0);
            for (int i=0;i<users.size();i++){
                if(users.get(i).getUsercode().equals(Usercod) && users.get(i).getUserpassword().equals(Pwd)){
                    foundcount++;
                    System.out.println("登陆后获取到的登录名"+users.get(i).getUsercode());
                    info=new SimpleAuthenticationInfo(users,users.get(i).getUserpassword(),getName());
                    break;
                }
            }
        if (foundcount==0){
            info=new SimpleAuthenticationInfo(null,getName());
        }
        return info;
    }
}
