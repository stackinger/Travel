package com.travel.model;

import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;

public class TravelArticle {
    private Integer id;

    private String articleId;

    private String title;

    private String authorAccount;

    private String pictureMain;

    @JSONField (format="yyyy-MM-dd HH:mm")
    private Date time;

    private String articleClass;

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

    private String content;
    
    //用户（文章作者）
    private TravelUser travelUser;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getArticleId() {
        return articleId;
    }

    public void setArticleId(String articleId) {
        this.articleId = articleId == null ? null : articleId.trim();
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

    public String getPictureMain() {
        return pictureMain;
    }

    public void setPictureMain(String pictureMain) {
        this.pictureMain = pictureMain == null ? null : pictureMain.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getArticleClass() {
        return articleClass;
    }

    public void setArticleClass(String articleClass) {
        this.articleClass = articleClass == null ? null : articleClass.trim();
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

	public TravelUser getTravelUser() {
		return travelUser;
	}

	public void setTravelUser(TravelUser travelUser) {
		this.travelUser = travelUser;
	}
    
}