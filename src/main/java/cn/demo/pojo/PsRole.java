package cn.demo.pojo;

import java.io.Serializable;
import java.util.List;

/**
 * (PsRole)实体类
 *
 * @author makejava
 * @since 2020-06-11 11:24:15
 */
public class PsRole implements Serializable {

    /**
    * 角色主键ID
    */
    private Integer id;

    private String rolename;
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
    * 是否启用1为启用0为不启用
    */
    private Integer isstart;
// 实体类
   private List<PsRolePremission> psRolePremissions;

    public List<PsRolePremission> getPsRolePremissions() {
        return psRolePremissions;
    }

    public void setPsRolePremissions(List<PsRolePremission> psRolePremissions) {
        this.psRolePremissions = psRolePremissions;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
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
