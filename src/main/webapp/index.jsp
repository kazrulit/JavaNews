<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insert page="/Views/baseLayout.jsp" flush="true">
  <tiles:put name="title" value="Tiles Example" />
  <tiles:put name="footer" value="/Views/footer.jsp" />
</tiles:insert>