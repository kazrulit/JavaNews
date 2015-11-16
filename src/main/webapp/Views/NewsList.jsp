<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setLocale value='${pageContext.session.getAttribute("org.apache.struts.action.LOCALE")}'/>
<html:form action="/delete" method="post">
    <logic:iterate id="newsListId" name="newsList">
        <div class="news-block">
            <a href='/view.do?id=<bean:write name="newsListId" property="id"/>'>
                <div class="left">
                    <h2 class="title"><bean:write name="newsListId" property="title"/></h2>
                    <div class="text"><bean:write name="newsListId" property="brief"/></div>
                </div>
                <div class="right">
                    <bean:define id="date" name="newsListId" property="publishDate"/>
                    <p class="date"><fmt:formatDate type="date" value="${date}"/></p>
                    <div class="extras">
                        <a href="/view.do?id=<bean:write name="newsListId" property="id"/>"><bean:message key="news.view"/></a>
                        <a href="/edit.do?id=<bean:write name="newsListId" property="id"/>"><bean:message key="news.edit"/></a>
                        <input type="checkbox" name="id" value="${newsListId.id}"/>
                    </div>
                </div>
                <div class="clears"></div>
            </a>
        </div>
    </logic:iterate>
    <input type="submit" value="<bean:message key='news.delete'/>" onclick="return (confirm('<bean:message key='news.ondelete'/>'))"/>

    <c:if test="${pagesCount > 0}">
    <div class="pagination">
        <ul>
        <c:forEach var="i" begin="0" end="${pagesCount}">
            <li><a href="/main.do?page=${i}">${i + 1}</a></li>
        </c:forEach>
            <div class="clears"></div>
        </ul>
    </div>
    </c:if>

</html:form>