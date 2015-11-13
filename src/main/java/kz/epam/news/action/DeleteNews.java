package kz.epam.news.action;

import kz.epam.news.configs.Configs;
import kz.epam.news.dao.NewsDAO;
import kz.epam.news.entity.News;
import kz.epam.news.form.NewsForm;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.struts.ActionSupport;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 * Created by admin on 11/13/2015.
 */
public class DeleteNews extends ActionSupport {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        WebApplicationContext context = getWebApplicationContext();
        NewsDAO newsDAO = (NewsDAO) context.getBean(Configs.NEWSDAO);

        if(request.getParameter(Configs.ID) != null) {
            String[] ids = request.getParameterValues(Configs.ID);
            for (String id : ids) {
                newsDAO.remove(Integer.valueOf(id));
            }
        }

        return mapping.findForward(Configs.SUCCESS);
    }
}
