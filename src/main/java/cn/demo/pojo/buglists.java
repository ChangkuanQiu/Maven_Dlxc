package cn.demo.pojo;

import java.io.Serializable;

public class buglists  implements Serializable {

    /**
     * 主键ID
     */
    private Integer id;
    /**
     * 主表任务ID
     */
    private Integer taskid;
    /**
     * 杆塔ID
     */
    private Integer poleid;

    private String polecode;

    private String linecode;

    private String linename;
    /**
     * 有无缺陷/故障，1、有，0、无
     */
    private Integer isbug;
    /**
     * 完好率
     */
    private Integer intactrate;
    /**
     * 缺陷级别ID
     */
    private Integer buglevel;

    private String buglevelname;
    /**
     * 缺陷类型ID
     */
    private Integer bugtype;

    private String bugtypename;

    private String bugdesc;

    private String discoverercode;

    private String discoverername;
    /**
     * 发现时间
     */
    private String discovertime;
    /**
     * 是否消缺，1、是，0、否
     */
    private Integer issolve;
    /**
     * 巡检时间
     */
    private String inspecttime;
    /**
     * 创建时间
     */
    private String creationtime;

    private String createdby;
    /**
     * 最后修改时间
     */
    private String lastupdatetime;

     private  Integer mid;
    private String missuedByName;
    private String inspectionTaskCode;
    private String missuedTime;

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

    public Integer getPoleid() {
        return poleid;
    }

    public void setPoleid(Integer poleid) {
        this.poleid = poleid;
    }

    public String getPolecode() {
        return polecode;
    }

    public void setPolecode(String polecode) {
        this.polecode = polecode;
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

    public Integer getIsbug() {
        return isbug;
    }

    public void setIsbug(Integer isbug) {
        this.isbug = isbug;
    }

    public Integer getIntactrate() {
        return intactrate;
    }

    public void setIntactrate(Integer intactrate) {
        this.intactrate = intactrate;
    }

    public Integer getBuglevel() {
        return buglevel;
    }

    public void setBuglevel(Integer buglevel) {
        this.buglevel = buglevel;
    }

    public String getBuglevelname() {
        return buglevelname;
    }

    public void setBuglevelname(String buglevelname) {
        this.buglevelname = buglevelname;
    }

    public Integer getBugtype() {
        return bugtype;
    }

    public void setBugtype(Integer bugtype) {
        this.bugtype = bugtype;
    }

    public String getBugtypename() {
        return bugtypename;
    }

    public void setBugtypename(String bugtypename) {
        this.bugtypename = bugtypename;
    }

    public String getBugdesc() {
        return bugdesc;
    }

    public void setBugdesc(String bugdesc) {
        this.bugdesc = bugdesc;
    }

    public String getDiscoverercode() {
        return discoverercode;
    }

    public void setDiscoverercode(String discoverercode) {
        this.discoverercode = discoverercode;
    }

    public String getDiscoverername() {
        return discoverername;
    }

    public void setDiscoverername(String discoverername) {
        this.discoverername = discoverername;
    }

    public String getDiscovertime() {
        return discovertime;
    }

    public void setDiscovertime(String discovertime) {
        this.discovertime = discovertime;
    }

    public Integer getIssolve() {
        return issolve;
    }

    public void setIssolve(Integer issolve) {
        this.issolve = issolve;
    }

    public String getInspecttime() {
        return inspecttime;
    }

    public void setInspecttime(String inspecttime) {
        this.inspecttime = inspecttime;
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

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getMissuedByName() {
        return missuedByName;
    }

    public void setMissuedByName(String missuedByName) {
        this.missuedByName = missuedByName;
    }

    public String getInspectionTaskCode() {
        return inspectionTaskCode;
    }

    public void setInspectionTaskCode(String inspectionTaskCode) {
        this.inspectionTaskCode = inspectionTaskCode;
    }

    public String getMissuedTime() {
        return missuedTime;
    }

    public void setMissuedTime(String missuedTime) {
        this.missuedTime = missuedTime;
    }
}
