<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<div class="form-container">
  <html:form action="/add">
    <html:hidden property="id" value="${news.id}"/>
    <p>Title</p>
    <div><html:text property="title" value="${news.title}"/></div>
    <p>Brief</p>
    <div><html:textarea property="brief" value="${news.brief}"/></div>
    <p>Content</p>
    <div><html:textarea property="content" value="${news.content}"/></div>
    <html:submit value="Save"/>
  </html:form>
</div>
