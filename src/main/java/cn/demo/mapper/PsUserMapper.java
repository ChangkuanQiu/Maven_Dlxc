package cn.demo.mapper;


import cn.demo.pojo.PsFunction;
import cn.demo.pojo.PsRole;
import cn.demo.pojo.PsUser;

import java.util.List;

public interface PsUserMapper {
//    登录方法获取用户角色
    PsUser login(String  code,String pwd );
//    根据用户角色id找 权限id
    PsRole findFunctioncode( Integer rid);
//        根据权限id找对应权限
    List<PsFunction> getQx(Integer fcode);
    //查找所有用户数据 放到Redis缓存中
    List<PsUser> getUserList();
//查找所有的巡检员
List<PsUser> getUserxj(Integer page, Integer rows);
}
