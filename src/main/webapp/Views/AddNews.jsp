<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<div class="form-container">
    <div class="errors">
        <html:errors/>
    </div>
    <html:form action="/add">
        <html:hidden property="id"/>
        <p><bean:message key="input.title"/></p>
        <div><html:text name="NewsForm" property="title"/></div>

        <p><bean:message key="input.brief"/></p>
        <div><html:textarea property="brief"/></div>
        <p><bean:message key="input.content"/></p>
        <div><html:textarea property="content"/></div>
        <input type="submit" value="<bean:message key='news.save'/>"/>
    </html:form>
</div>
