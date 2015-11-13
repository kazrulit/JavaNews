package kz.epam.news.form;

import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

public class NewsForm extends ValidatorForm{
    private int id;
    private String title;
    //private Date publishDate;
    private String brief;
    private String content;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

   // public Date getPublishDate() {
       // return publishDate;
    //}

   // public void setPublishDate(Date publishDate) {
    //    this.publishDate = publishDate;
    //}

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public void reset(ActionMapping mapping, HttpServletRequest request) {
        id = 0;
        title = null;
        brief = null;
        content = null;
        super.reset(mapping, request);
    }
}
