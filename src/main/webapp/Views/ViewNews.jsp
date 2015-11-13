<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<div class="view-wrap">
  <div class="view-block">
    <p class="title"><bean:message key="input.title"/></p>
    <p class="text">${news.title}</p>
    <div class="clears"></div>
  </div>

  <div class="view-block">
    <p class="title"><bean:message key="input.date"/></p>
    <p class="text">${news.publishDate}</p>
    <div class="clears"></div>
  </div>

  <div class="view-block">
    <p class="title"><bean:message key="input.brief"/></p>
    <p class="text">${news.brief}</p>
    <div class="clears"></div>
  </div>

  <div class="view-block">
    <p class="title"><bean:message key="input.content"/></p>
    <p class="text">${news.content}</p>
    <div class="clears"></div>
  </div>

  <div class="actions">
    <a href="/edit.do?id=${news.id}"><bean:message key="news.edit"/></a>
    <a href="/delete.do?id=${news.id}" onclick="return (confirm('<bean:message key='news.ondelete'/>'))" id="delete" class="delete"><bean:message key="news.delete"/></a>
  </div>
</div>