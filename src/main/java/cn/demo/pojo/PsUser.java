package cn.demo.pojo;

import java.io.Serializable;

/**
 * (PsUser)实体类
 *
 * @author makejava
 * @since 2020-06-11 11:28:50
 */
public class PsUser implements Serializable {

    /**
    * 主键ID
    */
    private Integer id;
//登录名
    private String usercode;
//姓名
    private String username;
//密码
    private String userpassword;
//性别
    private String sex;
    /**
    * 年龄
    */
    private Integer age;
    /**
    * 入职日期
    */
    private String entrydate;
    /**
    * 离职日期
    */
    private String dimissiondate;

    private String phonetel;

    private String email;
    /**
    * 注册时间
    */
    private String creationtime;
    /**
    * 最后登录时间
    */
    private String lastlogintime;

    private String createdby;
    /**
    * 最后修改时间
    */
    private String lastupdatetime;
    /**
    * 使用状态1为正常0为冻结
    */
    private Integer userstatus;
    /**
    * 所属角色
    */
    private Integer roleid;
//实体类
private  PsRole PsRole;



    public cn.demo.pojo.PsRole getPsRole() {
        return PsRole;
    }

    public void setPsRole(cn.demo.pojo.PsRole psRole) {
        PsRole = psRole;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsercode() {
        return usercode;
    }

    public void setUsercode(String usercode) {
        this.usercode = usercode;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getEntrydate() {
        return entrydate;
    }

    public void setEntrydate(String entrydate) {
        this.entrydate = entrydate;
    }

    public String getDimissiondate() {
        return dimissiondate;
    }

    public void setDimissiondate(String dimissiondate) {
        this.dimissiondate = dimissiondate;
    }

    public String getPhonetel() {
        return phonetel;
    }

    public void setPhonetel(String phonetel) {
        this.phonetel = phonetel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCreationtime() {
        return creationtime;
    }

    public void setCreationtime(String creationtime) {
        this.creationtime = creationtime;
    }

    public String getLastlogintime() {
        return lastlogintime;
    }

    public void setLastlogintime(String lastlogintime) {
        this.lastlogintime = lastlogintime;
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

    public Integer getUserstatus() {
        return userstatus;
    }

    public void setUserstatus(Integer userstatus) {
        this.userstatus = userstatus;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }
}
