package cn.demo.service.impl;

import cn.demo.mapper.PsInspectiontaskMainMapper;
import cn.demo.pojo.PsInspectiontaskDetail;
import cn.demo.pojo.PsInspectiontaskMain;
import cn.demo.pojo.PsInspectorDetail;
import cn.demo.service.PsInspectiontaskMainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
 @Service("PsInspectiontaskMainService")
public class PsInspectiontaskMainServiceimpl implements PsInspectiontaskMainService {
     @Autowired
     private PsInspectiontaskMainMapper psInspectiontaskMainMapper;

     public PsInspectiontaskMainMapper getPsInspectiontaskMainMapper() {
         return psInspectiontaskMainMapper;
     }

     public void setPsInspectiontaskMainMapper(PsInspectiontaskMainMapper psInspectiontaskMainMapper) {
         this.psInspectiontaskMainMapper = psInspectiontaskMainMapper;
     }

     @Override
    public List<PsInspectiontaskMain> queryAll() {
         List<PsInspectiontaskMain> list=psInspectiontaskMainMapper.queryAll();
        return list;
    }

    @Override
    public void insert(PsInspectiontaskMain a) {
    psInspectiontaskMainMapper.insert(a);
    }

    @Override
    public PsInspectiontaskMain queryById(String id) {
         PsInspectiontaskMain model=psInspectiontaskMainMapper.queryById(id);
        return model;
    }

    @Override
    public void updateMain(PsInspectiontaskMain psInspection) {
   psInspectiontaskMainMapper.updateMain(psInspection);
     }

    @Override
    public void deleteById(String id) {
         psInspectiontaskMainMapper.deleteById(id);

    }

     @Override
     public Integer getMainCount() {
         Integer a=psInspectiontaskMainMapper.getMainCount();
         return a;
     }

     @Override
     public List<PsInspectiontaskMain> queryFy(Integer page, Integer rows) {
         List<PsInspectiontaskMain> list=psInspectiontaskMainMapper.queryFy((page-1)*rows,rows);
         return list;
     }

     @Override
     public List<PsInspectiontaskMain> queryFy2(Integer page, Integer rows) {
         List<PsInspectiontaskMain> list=psInspectiontaskMainMapper.queryFy2((page-1)*rows,rows);
         return list;
     }

     @Override
     public PsInspectiontaskMain findeXQ(String id) {
      PsInspectiontaskMain aa = psInspectiontaskMainMapper.findeXQ(id);
         return aa;
     }

     @Override
     public void fp(PsInspectorDetail a) {
         psInspectiontaskMainMapper.fp(a);
     }

     @Override
     public void hzlr(PsInspectiontaskDetail model) {
         psInspectiontaskMainMapper.hzlr(model);
     }

     @Override
     public List<PsInspectiontaskDetail> getqx(Integer page,Integer rows) {
         List<PsInspectiontaskDetail> a=psInspectiontaskMainMapper.getqx((page-1)*rows,rows);
         return a;
     }

     @Override
     public Integer getqxCount() {
     Integer a=  psInspectiontaskMainMapper.getqxCount();
         return a;
     }


 }
