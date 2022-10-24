<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap');

    #mypage-sidemenu{
        width: 17vw;
        height: 90vh;
        background-color: rgb(133, 133, 200);
        font-size: 20px;
        text-align: end;
        font-family: 'Noto Sans KR', sans-serif;

    }
    #mypage-sidemenu > div{
        border-top: 1px solid rgb(222, 222, 222);
        color: white;
        width: 100%;
        height: 80px;
        text-align: center;
        
    }
    .menu:hover{
        cursor: pointer; 
        background-color: rgb(98, 92, 161);
        transition: 0.5s;
    }
</style>

<div id="mypage-sidemenu">
    <div></div>
    <div class="menu" onclick="location.href='${root}/organization/tree'">조직도</div>
    <div class="menu" onclick="location.href='${root}/organization/tree'">사원검색</div>
    <div></div>
</div>

