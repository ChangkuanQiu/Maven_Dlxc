package cn.demo.pojo;

import java.util.Date;
import java.io.Serializable;
import cn.demo.pojo.PsInspectorDetail;

/**
 * (PsInspectiontaskMain)实体类
 *
 * @author makejava
 * @since 2020-06-17 12:17:03
 */
public class PsInspectiontaskMain implements Serializable {

    /**
    * 主键ID
    */
    private Integer id;

    private String inspectiontaskcode;

    private String inspectiontaskname;
    /**
    * 所属线路ID
    */
    private Integer lineid;

    private String linecode;

    private String linename;
    /**
    * 起始杆号ID
    */
    private Integer startpole;

    private String startpolecode;
    /**
    * 终止杆号ID
    */
    private Integer endpole;

    private String endpolecode;

    private String issuedbycode;

    private String issuedbyname;
    /**
    * 任务下发时间
    */
    private String issuedtime;
    /**
    * 任务状态ID
    */
    private Integer taskstatus;

    private String taskstatusname;
    /**
    * 任务完成时间
    */
    private String finishtime;

    private String common;
    /**
    * 创建时间
    */
    private String creationtime;
     private String  iscancel;
    private String createdby;
    /**
    * 最后修改时间
    */
    private String lastupdatetime;
//实体类
    private  PsInspectorDetail psInspectorDetail;
    private PsInspectiontaskDetail psInspectiontaskDetail;

    public PsInspectiontaskDetail getPsInspectiontaskDetail() {
        return psInspectiontaskDetail;
    }

    public void setPsInspectiontaskDetail(PsInspectiontaskDetail psInspectiontaskDetail) {
        this.psInspectiontaskDetail = psInspectiontaskDetail;
    }

    public PsInspectorDetail getPsInspectorDetail() {
        return psInspectorDetail;
    }

    public void setPsInspectorDetail(PsInspectorDetail psInspectorDetail) {
        this.psInspectorDetail = psInspectorDetail;
    }

    public String getIscancel() {
        return iscancel;
    }

    public void setIscancel(String iscancel) {
        this.iscancel = iscancel;
    }

    public String getInspectiontaskcode() {
        return inspectiontaskcode;
    }

    public void setInspectiontaskcode(String inspectiontaskcode) {
        this.inspectiontaskcode = inspectiontaskcode;
    }

    public String getInspectiontaskname() {
        return inspectiontaskname;
    }

    public void setInspectiontaskname(String inspectiontaskname) {
        this.inspectiontaskname = inspectiontaskname;
    }

    public Integer getLineid() {
        return lineid;
    }

    public void setLineid(Integer lineid) {
        this.lineid = lineid;
    }

    public String getLinecode() {
        return linecode;
    }

    public void setLinecode(String linecode) {
        this.linecode = linecode;
    }

    public String getLinename() {
        return linename;
    }

    public void setLinename(String linename) {
        this.linename = linename;
    }

    public Integer getStartpole() {
        return startpole;
    }

    public void setStartpole(Integer startpole) {
        this.startpole = startpole;
    }

    public String getStartpolecode() {
        return startpolecode;
    }

    public void setStartpolecode(String startpolecode) {
        this.startpolecode = startpolecode;
    }

    public Integer getEndpole() {
        return endpole;
    }

    public void setEndpole(Integer endpole) {
        this.endpole = endpole;
    }

    public String getEndpolecode() {
        return endpolecode;
    }

    public void setEndpolecode(String endpolecode) {
        this.endpolecode = endpolecode;
    }

    public String getIssuedbycode() {
        return issuedbycode;
    }

    public void setIssuedbycode(String issuedbycode) {
        this.issuedbycode = issuedbycode;
    }

    public String getIssuedbyname() {
        return issuedbyname;
    }

    public void setIssuedbyname(String issuedbyname) {
        this.issuedbyname = issuedbyname;
    }



    public Integer getTaskstatus() {
        return taskstatus;
    }

    public void setTaskstatus(Integer taskstatus) {
        this.taskstatus = taskstatus;
    }

    public String getTaskstatusname() {
        return taskstatusname;
    }

    public void setTaskstatusname(String taskstatusname) {
        this.taskstatusname = taskstatusname;
    }

    public String getFinishtime() {
        return finishtime;
    }

    public void setFinishtime(String finishtime) {
        this.finishtime = finishtime;
    }

    public String getCommon() {
        return common;
    }

    public void setCommon(String common) {
        this.common = common;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIssuedtime() {
        return issuedtime;
    }

    public void setIssuedtime(String issuedtime) {
        this.issuedtime = issuedtime;
    }

    public String getCreationtime() {
        return creationtime;
    }

    public void setCreationtime(String creationtime) {
        this.creationtime = creationtime;
    }

    public String getLastupdatetime() {
        return lastupdatetime;
    }

    public void setLastupdatetime(String lastupdatetime) {
        this.lastupdatetime = lastupdatetime;
    }
}
