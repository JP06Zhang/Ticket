package com.zjp.service;

import com.zjp.vo.FilmDetailVo;
import com.zjp.vo.FilmVo;

import java.util.List;

public interface FilmService {
    List<FilmVo> selectAll();

    FilmDetailVo findFilmById(String filmId);
}
