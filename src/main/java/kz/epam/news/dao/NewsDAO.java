package kz.epam.news.dao;

import kz.epam.news.entity.News;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import java.util.List;

/**
 * @author Khamid
 */
//TODO create hibernate creteria
public class NewsDAO extends HibernateDaoSupport implements NewsDAOI {

    @Override
    public void save(News news) {
        Session session = getSessionFactory().openSession();
        session.beginTransaction();
        session.saveOrUpdate(news);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void remove(int id) {
        News news = new News();
        news.setId(id);
        Session session = getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(news);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public News fetchById(int id) {
        Session session = getSessionFactory().openSession();
        News news = (News) session.get(News.class, id);
        session.close();
        return news;
    }

    @Override
    public List<News> getList() {
        Session session = getSessionFactory().openSession();
        List<News> newsList = session.createCriteria(News.class).list();
        session.close();
        return newsList;
    }
}
