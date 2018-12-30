package com.jieming.dao;

import com.jieming.entity.Culture;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by JieMing on 2018/12/29.
 */
@Repository
public interface CultureMapper {
    List<Culture> getAll();
    List<Culture> getNewsByCategories(Long id);
    Culture getContentsById(Long id);
    List<Culture> getNewsByTitleKeyWord(String keyword);
}
