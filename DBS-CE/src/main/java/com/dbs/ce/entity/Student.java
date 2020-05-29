package com.dbs.ce.entity;

public class Student {
    private String sno;

    private String sname;

    private String ssex;

    private Short sage;

    private String sdept;

    private String snick;

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno == null ? null : sno.trim();
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex == null ? null : ssex.trim();
    }

    public Short getSage() {
        return sage;
    }

    public void setSage(Short sage) {
        this.sage = sage;
    }

    public String getSdept() {
        return sdept;
    }

    public void setSdept(String sdept) {
        this.sdept = sdept == null ? null : sdept.trim();
    }

    public String getSnick() {
        return snick;
    }

    public void setSnick(String snick) {
        this.snick = snick == null ? null : snick.trim();
    }

    @Override
    public String toString() {
        return "Student{" +
                "sno='" + sno + '\'' +
                ", sname='" + sname + '\'' +
                ", ssex='" + ssex + '\'' +
                ", sage=" + sage +
                ", sdept='" + sdept + '\'' +
                ", snick='" + snick + '\'' +
                '}';
    }
}