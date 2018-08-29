package com.future.json;

import com.google.gson.annotations.SerializedName;

/**
 * Created by wu on 2018/8/29.
 */
public class DataBean {
    /**
     * type : image
     * text : 4套房的北京土著和0套房的年轻北漂，进行了一场对谈
     * username : 爱笑de小公主 [精污馆]
     * uid : 6281065
     * header : http://wimg.spriteapp.cn/profile/large/2017/09/20/59c21169151fc_mini.jpg
     * comment : 251
     * top_commentsVoiceuri : null
     * top_commentsContent : 北京是唯一不带动周边城市发展，还要大量消耗周边城市资源的首都城市。
     * top_commentsHeader : http://qzapp.qlogo.cn/qzapp/100336987/5F1D74BF0172E74CDE637EF04A9D50C4/100
     * top_commentsName : 沐乘风
     * passtime : 2017-11-21 16:46:02
     * soureid : 26865796
     * up : 852
     * down : 138
     * forward : 79
     * image : http://wimg.spriteapp.cn/ugc/2017/11/21/5a1393a12ec79_1.jpg
     * gif : null
     * thumbnail : http://wimg.spriteapp.cn/ugc/2017/11/21/5a1393a12ec79_1.jpg
     * video : null
     */

    @SerializedName("type")
    private String type;
    @SerializedName("text")
    private String text;
    @SerializedName("username")
    private String username;
    @SerializedName("uid")
    private String uid;
    @SerializedName("header")
    private String header;
    @SerializedName("comment")
    private int comment;
    @SerializedName("top_commentsVoiceuri")
    private Object topCommentsVoiceuri;
    @SerializedName("top_commentsContent")
    private String topCommentsContent;
    @SerializedName("top_commentsHeader")
    private String topCommentsHeader;
    @SerializedName("top_commentsName")
    private String topCommentsName;
    @SerializedName("passtime")
    private String passtime;
    @SerializedName("soureid")
    private int soureid;
    @SerializedName("up")
    private int up;
    @SerializedName("down")
    private int down;
    @SerializedName("forward")
    private int forward;
    @SerializedName("image")
    private String image;
    @SerializedName("gif")
    private Object gif;
    @SerializedName("thumbnail")
    private String thumbnail;
    @SerializedName("video")
    private Object video;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getHeader() {
        return header;
    }

    public void setHeader(String header) {
        this.header = header;
    }

    public int getComment() {
        return comment;
    }

    public void setComment(int comment) {
        this.comment = comment;
    }

    public Object getTopCommentsVoiceuri() {
        return topCommentsVoiceuri;
    }

    public void setTopCommentsVoiceuri(Object topCommentsVoiceuri) {
        this.topCommentsVoiceuri = topCommentsVoiceuri;
    }

    public String getTopCommentsContent() {
        return topCommentsContent;
    }

    public void setTopCommentsContent(String topCommentsContent) {
        this.topCommentsContent = topCommentsContent;
    }

    public String getTopCommentsHeader() {
        return topCommentsHeader;
    }

    public void setTopCommentsHeader(String topCommentsHeader) {
        this.topCommentsHeader = topCommentsHeader;
    }

    public String getTopCommentsName() {
        return topCommentsName;
    }

    public void setTopCommentsName(String topCommentsName) {
        this.topCommentsName = topCommentsName;
    }

    public String getPasstime() {
        return passtime;
    }

    public void setPasstime(String passtime) {
        this.passtime = passtime;
    }

    public int getSoureid() {
        return soureid;
    }

    public void setSoureid(int soureid) {
        this.soureid = soureid;
    }

    public int getUp() {
        return up;
    }

    public void setUp(int up) {
        this.up = up;
    }

    public int getDown() {
        return down;
    }

    public void setDown(int down) {
        this.down = down;
    }

    public int getForward() {
        return forward;
    }

    public void setForward(int forward) {
        this.forward = forward;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Object getGif() {
        return gif;
    }

    public void setGif(Object gif) {
        this.gif = gif;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public Object getVideo() {
        return video;
    }

    public void setVideo(Object video) {
        this.video = video;
    }
}
