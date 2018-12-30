package com.jieming.service;

import com.jieming.entity.Culture;

import java.util.List;

/**
 * Created by JieMing on 2018/12/29.
 */
public interface CultureService {
    List <Culture> getAll();
    List<Culture> getNewsByCategories(Long id);
    Culture getContentsById(Long id);
    List<Culture> getNewsByTitleKeyWord(String keyword);
}
