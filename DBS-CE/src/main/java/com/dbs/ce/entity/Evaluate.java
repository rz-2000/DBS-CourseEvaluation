package com.dbs.ce.entity;

public class Evaluate {
    private String sno;

    private String cno;

    private String edate;

    private String econtent;


    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public String getEdate() {
        return edate;
    }

    public void setEdate(String edate) {
        this.edate = edate == null ? null : edate.trim();
    }

    public String getEcontent() {
        return econtent;
    }

    public void setEcontent(String econtent) {
        this.econtent = econtent == null ? null : econtent.trim();
    }

    @Override
    public String toString() {
        return "Evaluate{" +
                "sno='" + sno + '\'' +
                ", cno='" + cno + '\'' +
                ", edate='" + edate + '\'' +
                ", econtent='" + econtent + '\'' +
                '}';
    }
}