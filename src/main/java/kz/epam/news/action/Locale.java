package kz.epam.news.action;

import kz.epam.news.configs.Configs;
import org.apache.struts.Globals;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.struts.DispatchActionSupport;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by admin on 11/13/2015.
 */
public class Locale extends DispatchActionSupport {

    public ActionForward en(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println(java.util.Locale.ENGLISH);
        request.getSession().setAttribute(Globals.LOCALE_KEY, java.util.Locale.ENGLISH);
        return mapping.findForward(Configs.SUCCESS);
    }

    public ActionForward ru(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        java.util.Locale locale = new java.util.Locale("ru");
        request.getSession().setAttribute(Globals.LOCALE_KEY, locale);
        return mapping.findForward(Configs.SUCCESS);
    }
}
