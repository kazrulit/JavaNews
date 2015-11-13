<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head></head>
<body>
<div class="header-top container">
  <h1 class="title"><bean:message key="welcome.title"/></h1>
  <div class="lang-container">
    <a href="/locale.do?lang=en">English</a>
    <a href="/locale.do?lang=ru">Russian</a>
  </div>
  <div class="clears"></div>
</div>
</body>
</html>
