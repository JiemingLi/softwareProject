package com.jieming.entity;

import java.util.Date;

/**
 * Created by JieMing on 2018/12/29.
 */
public class Culture {
    private long id;
    private String title;
    private String subTitle;
    private Date listDate;
    private int type;
    private String contents;
    private String href;
    private Type category;


    public Type getCategory() {
        return category;
    }

    public void setCategory(Type category) {
        this.category = category;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }

    public Date getListDate() {
        return listDate;
    }

    public void setListDate(Date listDate) {
        this.listDate = listDate;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    @Override
    public String toString() {
        return "Culture{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", subTitle='" + subTitle + '\'' +
                ", listDate=" + listDate +
                ", type=" + type +
                ", contents='" + contents + '\'' +
                ", href='" + href + '\'' +
                '}';
    }
}
