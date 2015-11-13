<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<div class="sidebar">
  <p class="title"><bean:message key="welcome.title"/></p>
  <div class="links">
    <p><a href="/main.do"><bean:message key="news.list"/></a></p>
    <p><a href="/addPage.do"><bean:message key="news.add"/></a></p>
  </div>
</div>