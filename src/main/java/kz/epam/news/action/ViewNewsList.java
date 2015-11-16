package kz.epam.news.action;

import kz.epam.news.configs.Configs;
import kz.epam.news.dao.NewsDAO;
import kz.epam.news.entity.News;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.struts.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by admin on 11/11/2015.
 */
public class ViewNewsList extends ActionSupport {
    private final int MAXROWS = 5;
    private final String PAGE = "page";
    private final String NEWS_LIST = "newsList";
    private final String PAGES_COUNT = "pagesCount";

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        WebApplicationContext context = getWebApplicationContext();
        NewsDAO newsDAO = (NewsDAO) context.getBean(Configs.NEWSDAO);

        int firstRow = 0;
        int pagesCount = Math.round((newsDAO.getMaxResult().intValue() - 1)/MAXROWS);

        if(request.getParameter(PAGE) != null) {
            firstRow = MAXROWS * Integer.valueOf(request.getParameter(PAGE));
        }

        List<News> newsList = newsDAO.getList(firstRow, MAXROWS);


        request.setAttribute(NEWS_LIST, newsList);
        request.setAttribute(PAGES_COUNT, pagesCount);
        return mapping.findForward(Configs.SUCCESS);
    }
}
