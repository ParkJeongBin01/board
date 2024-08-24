<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 2024-08-12
  Time: 오전 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<%@include file="../layouts/header.jsp"%>

<h1 class="page-header my-4"><i class="far fa-file-alt"></i>${board.title}</h1>

<div class="d-flex justify-content-between">
    <div><i class="fas fa-user"></i>${board.writer}</div>
    <div>
        <i class="fas fa-clock"></i>
        <fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${board.regDate}"/>
    </div>
</div>

<div class="text-end">
    <c:forEach var="file" items="${board.attaches}">
        <div class="attach-file-item">
            <a href="/board/download/${file.no}" class="file-link">
<%--              링크 url이 중요!!  --%>
                <i class="fa-solid fa-floppy-disk"></i>
                ${file.filename} (${file.fileSize})<br>
            </a>
        </div>
    </c:forEach>
</div>

<hr>
<div>
    <pre>
    ${board.content}
<%--    이렇게 하면 textarea에서 엔터를 치더라고 그냥 띄어쓰기가 된다.--%>
<%--    그래서 <pre> </pre>라는 녀석을 넣으면 엔터 그대로 잘 나옴.--%>
<%--        css로 할 수도 있음 하지만 그건 나중에 뷰로 할 떄 해보자~--%>
    </pre>
</div>
<div class="mt-4">
    <a href="list" class="btn btn-primary"><i class="fas fa-list"></i> 목록</a>
    <a href="update?no=${board.no}" class="btn btn-primary"><i class="far fa-edit"></i> 수정</a>
    <a href="#" class="btn btn-primary delete"><i class="fas fa-trash-alt"></i> 삭제</a>
</div>

<%--히든으로 구성했기에 화면엔 보이지 않음.--%>
<%--delete가 POST::/board/delete임.--%>
<form action="delete" method="post" id="deleteForm">
    <input type="hidden" name="no" value="${board.no}"/>
</form>

<script src="/resources/js/board.js"></script>

<%@include file="../layouts/footer.jsp"%>