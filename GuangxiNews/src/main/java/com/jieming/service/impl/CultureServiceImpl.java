package com.jieming.service.impl;

import com.jieming.dao.CultureMapper;
import com.jieming.entity.Culture;
import com.jieming.service.CultureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by JieMing on 2018/12/29.
 */
@Service("cultureService")
public class CultureServiceImpl implements CultureService{

    @Autowired
    private CultureMapper cultureMapper;

    public List<Culture> getAll() {

        return cultureMapper.getAll();
    }

    public List<Culture> getNewsByCategories(Long id) {
        return cultureMapper.getNewsByCategories(id);
    }

    public Culture getContentsById(Long id) {
        return cultureMapper.getContentsById(id);
    }

    public List<Culture> getNewsByTitleKeyWord(String keyword) {
        return cultureMapper.getNewsByTitleKeyWord(keyword);
    }
}
