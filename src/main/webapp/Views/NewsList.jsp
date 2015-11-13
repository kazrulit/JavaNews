<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html:form action="/delete" method="post">
    <logic:iterate id="newsListId" name="newsList">
        <div class="news-block">
            <a href='/view.do?id=<bean:write name="newsListId" property="id"/>'>
                <div class="left">
                    <h2 class="title"><bean:write name="newsListId" property="title"/></h2>
                    <div class="text"><bean:write name="newsListId" property="brief"/></div>
                </div>
                <div class="right">
                    <p class="date"><bean:write name="newsListId" property="publishDate"/></p>
                    <div class="extras">
                        <a href="/view.do?id=<bean:write name="newsListId" property="id"/>">View</a>
                        <a href="/edit.do?id=<bean:write name="newsListId" property="id"/>">Edit</a>
                        <html:checkbox property="id" value="${newsListId.id}"/>
                    </div>
                </div>
                <div class="clears"></div>
            </a>
        </div>
    </logic:iterate>

    <html:submit value="Delete" styleId="delete"/>
</html:form>