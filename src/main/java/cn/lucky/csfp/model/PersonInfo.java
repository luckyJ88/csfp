package cn.lucky.csfp.model;

import java.util.Date;

/**
 * 人口信息
 */
public class PersonInfo {
    /**
     * 人口信息表id
     */
    private Integer id;
    /**
     *身份证号
     */
    private String sfzh;
    /**
     *真实姓名
     */
    private String zsxm;
    /**
     *性别
     */
    private String xb;
    /**
     *出生日期
     */
    private Date csrq;
    /**
     *证件照路径
     */
    private String zjz;
    /**
     *民族
     */
    private String mz;
    /**
     *政治面貌
     */
    private String zzmm;
    /**
     *文化程度
     */
    private String whcd;
    /**
     *户口类别
     */
    private String hklx;
    /**
     *户籍地
     */
    private String hjd;
    /**
     *婚姻状况
     */
    private String hyzk;
    /**
     *职业
     */
    private String zy;
    /**
     *籍贯
     */
    private String jg;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSfzh() {
        return sfzh;
    }

    public void setSfzh(String sfzh) {
        this.sfzh = sfzh;
    }

    public String getZsxm() {
        return zsxm;
    }

    public void setZsxm(String zsxm) {
        this.zsxm = zsxm;
    }

    public String getXb() {
        return xb;
    }

    public void setXb(String xb) {
        this.xb = xb;
    }

    public Date getCsrq() {
        return csrq;
    }

    public void setCsrq(Date csrq) {
        this.csrq = csrq;
    }

    public String getZjz() {
        return zjz;
    }

    public void setZjz(String zjz) {
        this.zjz = zjz;
    }

    public String getMz() {
        return mz;
    }

    public void setMz(String mz) {
        this.mz = mz;
    }

    public String getZzmm() {
        return zzmm;
    }

    public void setZzmm(String zzmm) {
        this.zzmm = zzmm;
    }

    public String getWhcd() {
        return whcd;
    }

    public void setWhcd(String whcd) {
        this.whcd = whcd;
    }

    public String getHklx() {
        return hklx;
    }

    public void setHklx(String hklx) {
        this.hklx = hklx;
    }

    public String getHjd() {
        return hjd;
    }

    public void setHjd(String hjd) {
        this.hjd = hjd;
    }

    public String getHyzk() {
        return hyzk;
    }

    public void setHyzk(String hyzk) {
        this.hyzk = hyzk;
    }

    public String getZy() {
        return zy;
    }

    public void setZy(String zy) {
        this.zy = zy;
    }

    public String getJg() {
        return jg;
    }

    public void setJg(String jg) {
        this.jg = jg;
    }

    public PersonInfo() {
    }

    @Override
    public String toString() {
        return "PersonInfo{" +
                "id=" + id +
                ", sfzh='" + sfzh + '\'' +
                ", zsxm='" + zsxm + '\'' +
                ", xb='" + xb + '\'' +
                ", csrq=" + csrq +
                ", zjz='" + zjz + '\'' +
                ", mz='" + mz + '\'' +
                ", zzmm='" + zzmm + '\'' +
                ", whcd='" + whcd + '\'' +
                ", hklx='" + hklx + '\'' +
                ", hjd='" + hjd + '\'' +
                ", hyzk='" + hyzk + '\'' +
                ", zy='" + zy + '\'' +
                ", jg='" + jg + '\'' +
                '}';
    }

    public PersonInfo(String sfzh, String zsxm, String xb, Date csrq, String zjz, String mz, String zzmm, String whcd, String hklx, String hjd, String hyzk, String zy, String jg) {
        this.sfzh = sfzh;
        this.zsxm = zsxm;
        this.xb = xb;
        this.csrq = csrq;
        this.zjz = zjz;
        this.mz = mz;
        this.zzmm = zzmm;
        this.whcd = whcd;
        this.hklx = hklx;
        this.hjd = hjd;
        this.hyzk = hyzk;
        this.zy = zy;
        this.jg = jg;
    }
}
