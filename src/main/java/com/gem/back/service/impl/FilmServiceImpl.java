package com.gem.back.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gem.back.entity.Film;
import com.gem.back.mapper.FilmMapper;
import com.gem.back.service.IFilmService;
import org.springframework.stereotype.Service;

@Service
public class FilmServiceImpl extends ServiceImpl<FilmMapper,Film> implements IFilmService {
}
