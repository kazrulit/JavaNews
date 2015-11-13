<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title></title>
  <link rel="stylesheet" href="/Views/css/style.css">
</head>
<body>
<tiles:insert attribute="header"/>

<div class="container main-container">
  <tiles:insert attribute="sidebar"/>

  <div class="body-wrap">
    <tiles:insert attribute="body"/>
  </div>

  <div class="clears"></div>
</div>



<tiles:insert attribute="footer"/>
</body>
</html>
