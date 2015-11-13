package kz.epam.news.dao;

import kz.epam.news.entity.News;

import java.util.List;

/**
 * Created by admin on 11/12/2015.
 */
public interface NewsDAOI {
    void save(News news);
    void remove(int id);
    News fetchById(int id);
    List<News> getList();
}
