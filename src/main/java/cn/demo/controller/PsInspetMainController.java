package cn.demo.controller;



import cn.demo.pojo.PsInspectiontaskDetail;
import cn.demo.pojo.PsInspectiontaskMain;
import cn.demo.pojo.PsInspectorDetail;
import cn.demo.service.PsInspectiontaskMainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Scope("prototype")
@Controller("PsInspetMainController")
@RequestMapping("/PsInspetMain")
public class PsInspetMainController {
    @Autowired
    private PsInspectiontaskMainService psInspectiontaskMainService;

    public PsInspectiontaskMainService getPsInspectiontaskMainService() {
        return psInspectiontaskMainService;
    }

    public void setPsInspectiontaskMainService(PsInspectiontaskMainService psInspectiontaskMainService) {
        this.psInspectiontaskMainService = psInspectiontaskMainService;
    }

    @RequestMapping(value = "/getall")
    public @ResponseBody
    Map<String, Object> get(Integer page, Integer rows) {
        if (page == null) {
            page = 1;
        }
        List<PsInspectiontaskMain> manlist = psInspectiontaskMainService.queryFy(page, rows);
        Integer count = psInspectiontaskMainService.getMainCount();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("total", count);
        map.put("rows", manlist);
        return map;
    }

    @RequestMapping(value = "/getall2")
    public @ResponseBody
    Map<String, Object> get2(Integer page, Integer rows) {
        if (page == null) {
            page = 1;
        }
        List<PsInspectiontaskMain> manlist = psInspectiontaskMainService.queryFy2(page, rows);
        Integer count = psInspectiontaskMainService.getMainCount();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("total", count);
        map.put("rows", manlist);
        return map;
    }

    @RequestMapping(value = "/del", method = RequestMethod.GET)
    public @ResponseBody
    Map<String, Boolean> del(String deleteId) {
        System.out.println(deleteId);
        psInspectiontaskMainService.deleteById(deleteId);
        Map<String, Boolean> map = new HashMap<String, Boolean>();
        map.put("success", true);
        return map;

    }


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public @ResponseBody Map<String, Object> add(PsInspectiontaskMain ma) {
        psInspectiontaskMainService.insert(ma);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("flag", true);
        return map;
    }

    @RequestMapping(value = "find", method = RequestMethod.GET)
    public String find(String id, HttpServletRequest request) {
        System.out.println("传过来的id:" + id);
        PsInspectiontaskMain model = psInspectiontaskMainService.queryById(id);
        request.setAttribute("model", model);
        return "admin/PsInspectMain/update";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> update(PsInspectiontaskMain ma) {
        psInspectiontaskMainService.updateMain(ma);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("flag", true);
        return map;
    }

    @RequestMapping(value = "show")
    public String show(String id, HttpServletRequest request) {
        System.out.println("传过来的id:" + id);
        PsInspectiontaskMain model = psInspectiontaskMainService.findeXQ(id);
        request.setAttribute("model", model);
        return "admin/PsInspectMain/Look";
    }

//        分配任务给巡检员
    @RequestMapping("/rw")
    public  @ResponseBody Map<String, Object> getxjy(Integer id, String code, String name) {
        PsInspectorDetail psInspectorDetail = new PsInspectorDetail();
        psInspectorDetail.setTaskid(id);
        psInspectorDetail.setInspectorcode(code);
        psInspectorDetail.setInspectorname(name);
        psInspectiontaskMainService.fp(psInspectorDetail);
        PsInspectiontaskMain m = new PsInspectiontaskMain();
        m.setId(id);
        m.setTaskstatusname("已分配");
//     分配完成修改任务状态
        psInspectiontaskMainService.updateMain(m);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("flag", true);
        return map;
    }

    //    修改任务为执行中
    @RequestMapping(value = "/upzxz")
    public String upzxz(Integer id) {
        System.out.println("ids"+id);
        PsInspectiontaskMain a = new PsInspectiontaskMain();
        a.setId(id);
        a.setTaskstatusname("执行中");
        psInspectiontaskMainService.updateMain(a);
        return "redirect:/admin/PsInspectMain/list2.jsp" ;
    }

    //    录入回执并修改任务为已完成(包括完成时间)
    @RequestMapping(value = "/lrhz",method = RequestMethod.POST)
    public @ResponseBody Map<String, Object> lrhz(PsInspectiontaskDetail model) {
        System.out.println(model.getBuglevelname()+model.getBugtypename());
        psInspectiontaskMainService.hzlr(model);
        PsInspectiontaskMain a = new PsInspectiontaskMain();
        a.setId(model.getTaskid());
        a.setFinishtime(model.getDiscovertime());
        a.setTaskstatusname("已完成");
        psInspectiontaskMainService.updateMain(a);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("flag", true);
        return map;
    }

    @RequestMapping(value = "findhz", method = RequestMethod.GET)
    public String findhz(String id, HttpServletRequest request) {
        System.out.println("传过来的id:" + id);
        PsInspectiontaskMain model = psInspectiontaskMainService.queryById(id);
        request.setAttribute("model", model);
        return "admin/PsInspectMain/lrhz";
    }
//    缺陷查询
@RequestMapping(value = "/getqxall")
public @ResponseBody
Map<String, Object> getqxall(Integer page, Integer rows) {
    List<PsInspectiontaskDetail> manlist = psInspectiontaskMainService.getqx(page, rows);
    Integer count = psInspectiontaskMainService.getqxCount();
    Map<String, Object> map = new HashMap<String, Object>();
    map.put("total", count);
    map.put("rows", manlist);
    return map;
}
}
