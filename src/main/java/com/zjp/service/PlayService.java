package com.zjp.service;

import com.zjp.vo.PlayDetailVo;
import com.zjp.vo.PlayVo;

import java.util.List;

public interface PlayService {

    List<PlayVo> findPlayById(String filmId);

    PlayDetailVo getDetailById(String playId);

}
