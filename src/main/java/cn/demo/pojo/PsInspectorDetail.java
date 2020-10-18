package cn.demo.pojo;

import java.util.Date;
import java.io.Serializable;

/**
 * (PsInspectorDetail)实体类
 *
 * @author makejava
 * @since 2020-06-21 10:58:48
 */
public class PsInspectorDetail implements Serializable {

    /**
    * 主键ID
    */
    private Integer id;
    /**
    * 主表任务ID
    */
    private Integer taskid;

    private String inspectorcode;

    private String inspectorname;
    /**
    * 创建时间
    */
    private String creationtime;

    private String createdby;
    /**
    * 最后修改时间
    */
    private String lastupdatetime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTaskid() {
        return taskid;
    }

    public void setTaskid(Integer taskid) {
        this.taskid = taskid;
    }

    public String getInspectorcode() {
        return inspectorcode;
    }

    public void setInspectorcode(String inspectorcode) {
        this.inspectorcode = inspectorcode;
    }

    public String getInspectorname() {
        return inspectorname;
    }

    public void setInspectorname(String inspectorname) {
        this.inspectorname = inspectorname;
    }

    public String getCreationtime() {
        return creationtime;
    }

    public void setCreationtime(String creationtime) {
        this.creationtime = creationtime;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby;
    }

    public String getLastupdatetime() {
        return lastupdatetime;
    }

    public void setLastupdatetime(String lastupdatetime) {
        this.lastupdatetime = lastupdatetime;
    }
}
