package com.zjp.dao;

import com.zjp.entity.Film;

import java.util.List;

public interface FilmMapper {

    List<Film> getList();

    Film getFilmById(String filmId);

}
