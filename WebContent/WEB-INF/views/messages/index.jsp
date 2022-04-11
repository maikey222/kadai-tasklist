<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2>
        <ul>
            <c:forEach var="messages" items="${messages }">
                <li>
                    <a href="${pageContext.request.contextPath }/show?id=${messages.id}">
                        <c:out value="${messages.id }"/>
                    </a>
                   ：<c:out value="${messages.content }"/>
                </li>
            </c:forEach>
        </ul>

        <p><a href="${pageContext.request.contextPath}/new">新規タスクの追加</a>

    </c:param>
</c:import>