package com.zjp.vo;

import java.math.BigDecimal;

public class PlayDetailVo {
    private String playId;

    private String playTimeStr;

    private String lanType;

    private BigDecimal price;

    private String roomId;

    private String roomName;

    private String filmId;

    private String filmName;

    private String seat;

    public String getPlayId() {
        return playId;
    }

    public void setPlayId(String playId) {
        this.playId = playId;
    }

    public String getPlayTimeStr() {
        return playTimeStr;
    }

    public void setPlayTimeStr(String playTimeStr) {
        this.playTimeStr = playTimeStr;
    }

    public String getLanType() {
        return lanType;
    }

    public void setLanType(String lanType) {
        this.lanType = lanType;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getFilmId() {
        return filmId;
    }

    public void setFilmId(String filmId) {
        this.filmId = filmId;
    }

    public String getFilmName() {
        return filmName;
    }

    public void setFilmName(String filmName) {
        this.filmName = filmName;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }
}