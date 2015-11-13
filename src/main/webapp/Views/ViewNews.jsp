<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<div class="view-wrap">
  <div class="view-block">
    <p class="title">News Title</p>
    <p class="text">${news.title}</p>
    <div class="clears"></div>
  </div>

  <div class="view-block">
    <p class="title">News Date</p>
    <p class="text">${news.publishDate}</p>
    <div class="clears"></div>
  </div>

  <div class="view-block">
    <p class="title">Brief</p>
    <p class="text">${news.brief}</p>
    <div class="clears"></div>
  </div>

  <div class="view-block">
    <p class="title">Content</p>
    <p class="text">${news.content}</p>
    <div class="clears"></div>
  </div>

  <div class="actions">
    <a href="/edit.do?id=${news.id}">Edit</a>
    <a href="/delete.do?id=${news.id}" id="delete" class="delete">Delete</a>
  </div>
</div>