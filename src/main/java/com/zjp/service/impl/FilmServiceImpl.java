package com.zjp.service.impl;

import com.zjp.dao.FilmMapper;
import com.zjp.entity.Film;
import com.zjp.service.FilmService;
import com.zjp.vo.FilmDetailVo;
import com.zjp.vo.FilmVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class FilmServiceImpl implements FilmService {

    @Resource
    private FilmMapper filmMapper;

    @Override
    public List<FilmVo> selectAll() {
        List<Film> films = filmMapper.getList();
        System.out.println("数据库中影片数量：" + films.size());
        List<FilmVo> result = new ArrayList<>();
        for (Film film : films) {
            FilmVo vo = new FilmVo();
            vo.setFilmId(film.getFilm_id());
            vo.setName(film.getName());
            vo.setDirector(film.getDirector());
            vo.setImgPath(film.getImg_path());
            result.add(vo);
        }
        return result;
    }

    @Override
    public FilmDetailVo findFilmById(String filmId) {
        Film film = filmMapper.getFilmById(filmId);
        FilmDetailVo vo = new FilmDetailVo();
        vo.setFilmId(filmId);
        vo.setName(film.getName());
        vo.setDirector(film.getDirector());
        vo.setImgPath(film.getImg_path());
        // 剧情  爱情   等  可以存储到额外的类型表中
        //  剧情-1  爱情-2   film - type [1,2]   再去type表中取具体的描述
        vo.setType(film.getType());
        vo.setPlayer(film.getPlayer());
        vo.setSynopsis(film.getSynopsis());
        vo.setCountry(film.getCountry());
        vo.setLength(film.getLength());

        return vo;
    }
}
