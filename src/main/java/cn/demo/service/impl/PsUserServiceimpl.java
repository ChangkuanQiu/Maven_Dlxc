package cn.demo.service.impl;


import cn.demo.pojo.PsFunction;
import cn.demo.pojo.PsRole;
import cn.demo.pojo.PsUser;
import cn.demo.mapper.PsUserMapper;
import cn.demo.service.PsUserService;
import cn.demo.util.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("PsUserService")
public class PsUserServiceimpl implements PsUserService {

@Autowired
private PsUserMapper psUserMapper;

    public PsUserMapper getPsUserMapper() {
        return psUserMapper;
    }

    public void setPsUserMapper(PsUserMapper psUserMapper) {
        this.psUserMapper = psUserMapper;
    }

    @Override
    public PsUser login(String uercode ,String pwd) {
       String password= MD5.getMd5(pwd);
        PsUser user=psUserMapper.login(uercode ,pwd);
        System.out.println("这是服务层!");
        return user;
    }

    @Override
    public PsRole findFunctioncode(Integer rid) {
        PsRole a=psUserMapper.findFunctioncode(rid);
        return a;
    }

    @Override
    public List<PsFunction> getQx(Integer rname) {
                List<PsFunction> list=psUserMapper.getQx(rname) ;
                return  list;
    }

    @Override
    public List<PsUser> getUserList() {
        List<PsUser> list=psUserMapper.getUserList();
        return list;
    }

    @Override
    public List<PsUser> getUserxj(Integer page, Integer rows) {
        List<PsUser> list=psUserMapper.getUserxj((page-1)*rows,rows);
        return list;
    }
}
