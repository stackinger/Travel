package com.travel.model;

import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;

public class TravelRecommend {
    private Integer id;

    private String recommendId;

    private String title;

    private String authorAccount;

    @JSONField (format="yyyy-MM-dd HH:mm")
    private Date time;

    private String recommendClass;

    private String content;

    private String pictureOne;

    private String pictureTwo;

    private String pictureThr;

    private String pictureFou;

    private String pictureFiv;

    private Integer praise;

    private Integer stamp;

    private String topFlg;

    private String adoptFlg;

    private String adoptReason;

    private String delFlg;

    private String createId;

    private Date createTime;

    private String updateId;

    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRecommendId() {
        return recommendId;
    }

    public void setRecommendId(String recommendId) {
        this.recommendId = recommendId == null ? null : recommendId.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getAuthorAccount() {
        return authorAccount;
    }

    public void setAuthorAccount(String authorAccount) {
        this.authorAccount = authorAccount == null ? null : authorAccount.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getRecommendClass() {
        return recommendClass;
    }

    public void setRecommendClass(String recommendClass) {
        this.recommendClass = recommendClass == null ? null : recommendClass.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getPictureOne() {
        return pictureOne;
    }

    public void setPictureOne(String pictureOne) {
        this.pictureOne = pictureOne == null ? null : pictureOne.trim();
    }

    public String getPictureTwo() {
        return pictureTwo;
    }

    public void setPictureTwo(String pictureTwo) {
        this.pictureTwo = pictureTwo == null ? null : pictureTwo.trim();
    }

    public String getPictureThr() {
        return pictureThr;
    }

    public void setPictureThr(String pictureThr) {
        this.pictureThr = pictureThr == null ? null : pictureThr.trim();
    }

    public String getPictureFou() {
        return pictureFou;
    }

    public void setPictureFou(String pictureFou) {
        this.pictureFou = pictureFou == null ? null : pictureFou.trim();
    }

    public String getPictureFiv() {
        return pictureFiv;
    }

    public void setPictureFiv(String pictureFiv) {
        this.pictureFiv = pictureFiv == null ? null : pictureFiv.trim();
    }

    public Integer getPraise() {
        return praise;
    }

    public void setPraise(Integer praise) {
        this.praise = praise;
    }

    public Integer getStamp() {
        return stamp;
    }

    public void setStamp(Integer stamp) {
        this.stamp = stamp;
    }

    public String getTopFlg() {
        return topFlg;
    }

    public void setTopFlg(String topFlg) {
        this.topFlg = topFlg == null ? null : topFlg.trim();
    }

    public String getAdoptFlg() {
        return adoptFlg;
    }

    public void setAdoptFlg(String adoptFlg) {
        this.adoptFlg = adoptFlg == null ? null : adoptFlg.trim();
    }

    public String getAdoptReason() {
        return adoptReason;
    }

    public void setAdoptReason(String adoptReason) {
        this.adoptReason = adoptReason == null ? null : adoptReason.trim();
    }

    public String getDelFlg() {
        return delFlg;
    }

    public void setDelFlg(String delFlg) {
        this.delFlg = delFlg == null ? null : delFlg.trim();
    }

    public String getCreateId() {
        return createId;
    }

    public void setCreateId(String createId) {
        this.createId = createId == null ? null : createId.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdateId() {
        return updateId;
    }

    public void setUpdateId(String updateId) {
        this.updateId = updateId == null ? null : updateId.trim();
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}