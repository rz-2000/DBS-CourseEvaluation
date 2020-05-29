package com.dbs.ce.entity;

public class Course {
    private String cno;

    private String cname;

    private String cdept;

    private Short ccredit;

    private String cinfo;

    private String cteacher;

    private String cdate;

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno == null ? null : cno.trim();
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public String getCdept() {
        return cdept;
    }

    public void setCdept(String cdept) {
        this.cdept = cdept == null ? null : cdept.trim();
    }

    public Short getCcredit() {
        return ccredit;
    }

    public void setCcredit(Short ccredit) {
        this.ccredit = ccredit;
    }

    public String getCinfo() {
        return cinfo;
    }

    public void setCinfo(String cinfo) {
        this.cinfo = cinfo == null ? null : cinfo.trim();
    }

    public String getCteacher() {
        return cteacher;
    }

    public void setCteacher(String cteacher) {
        this.cteacher = cteacher == null ? null : cteacher.trim();
    }

    public String getCdate() {
        return cdate;
    }

    public void setCdate(String cdate) {
        this.cdate = cdate == null ? null : cdate.trim();
    }

    @Override
    public String toString() {
        return "Course{" +
                "cno='" + cno + '\'' +
                ", cname='" + cname + '\'' +
                ", cdept='" + cdept + '\'' +
                ", ccredit=" + ccredit +
                ", cinfo='" + cinfo + '\'' +
                ", cteacher='" + cteacher + '\'' +
                ", cdate='" + cdate + '\'' +
                '}';
    }
}