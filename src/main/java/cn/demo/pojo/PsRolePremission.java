package cn.demo.pojo;

import java.io.Serializable;

/**
 * (PsRolePremission)实体类
 *
 * @author makejava
 * @since 2020-06-11 11:24:54
 */
public class PsRolePremission implements Serializable {

    /**
     * 主键ID
     */
    private Integer id;

    /**
     * 角色ID
     */
    private Integer roleid;

    private String functioncode;
    /**
     * 创建时间
     */
    private String creationtime;

    private String createdby;
    /**
     * 最后修改时间
     */
    private String lastupdatetime;
    /**
     * 1为启用0为不启用
     */
    private Integer isstart;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getFunctioncode() {
        return functioncode;
    }

    public void setFunctioncode(String functioncode) {
        this.functioncode = functioncode;
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

    public Integer getIsstart() {
        return isstart;
    }

    public void setIsstart(Integer isstart) {
        this.isstart = isstart;
    }

}

