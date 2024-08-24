<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 2024-08-12
  Time: 오전 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-md bg-primary navbar-dark sticky-top">
    <a class="navbar-brand" href="list"><i class="fa-solid fa-house"></i> Backend</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <!--좌측 메뉴 구성-->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="#">메뉴1</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">메뉴2</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">메뉴3</a>
            </li>
        </ul>
    <!--우측 메뉴-->
    <ul class="navbar-nav ms-auto">
        <li class="nav-item">
            <a class="nav-link" href="#">
                <img src="https://blog.kakaocdn.net/dn/Fz6Uq/btqSEKcJkOG/sYGbrQ7g6l0QdM4kbt9LY1/img.png"
                     class="avatar-sm"/>
                박정빈
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">
                <i class="fa-solid fa-right-from-bracket"></i>로그아웃
            </a>
            </li>
        </ul>
    </div>
</nav>