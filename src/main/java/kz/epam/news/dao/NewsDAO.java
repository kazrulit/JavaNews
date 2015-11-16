package kz.epam.news.dao;

import kz.epam.news.configs.Configs;
import kz.epam.news.entity.News;
import org.hibernate.Session;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import javax.enterprise.inject.New;
import java.util.List;

/**
 * @author Khamid
 */
public class NewsDAO extends HibernateDaoSupport implements NewsDAOI {
    public NewsDAO() {
    }

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
        News news = (News) session.createCriteria(News.class)
                .add(Restrictions.eq(Configs.ID, id))
                .uniqueResult();
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

    public List<News> getList(int firstRow, int maxRows) {
        Session session = getSessionFactory().openSession();

        List<News> newsList = session.createCriteria(News.class)
                .setFirstResult(firstRow)
                .setMaxResults(maxRows)
                .list();

        session.close();
        return newsList;
    }

    public Long getMaxResult() {
        Session session = getSessionFactory().openSession();
        Long resultLong = (Long) session.createCriteria(News.class)
                .setProjection(Projections.rowCount())
                .uniqueResult();
        session.close();
        return resultLong;
    }
}
