package cn.demo.service;

import cn.demo.pojo.PsInspectiontaskDetail;
import cn.demo.pojo.PsInspectiontaskMain;
import cn.demo.pojo.PsInspectorDetail;

import java.util.List;

public interface PsInspectiontaskMainService {
    //    查询所有
    List<PsInspectiontaskMain> queryAll();
    //    添加一条数据
    void   insert(PsInspectiontaskMain a);
    //    通过id查找一条数据
    PsInspectiontaskMain queryById(String id);
    //    通过id修改数据
    void updateMain(PsInspectiontaskMain psInspection);
    //    通过id删除一条数据
    void  deleteById(String id);
    Integer getMainCount();
    //    获取分页后的数据
    List<PsInspectiontaskMain> queryFy(Integer page,Integer rows);
    List<PsInspectiontaskMain> queryFy2(Integer page,Integer rows);
    //查看任务详情
    PsInspectiontaskMain findeXQ(String  id );
    //分配任务
    void fp(PsInspectorDetail a);
    //    回执录入
    void hzlr(PsInspectiontaskDetail model);
    //    缺陷查询测试
    List<PsInspectiontaskDetail> getqx(Integer page,Integer rows);
    //      缺陷记录数
    Integer getqxCount();
}
