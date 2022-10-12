<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    <%@ include file="/WEB-INF/views/payroll/main.css" %>
    

    main{
        display: grid;
        grid-template-rows: 1fr 8fr;
    }

    #create-select-area{
        border: 1px solid black;
    }

    #create-select-area > form{
        display : grid;
        grid-template-columns: 1.5fr 1fr 1fr 1fr;
    }

    #create-select-area > form > div{
        display: flex;
        align-items: center;
    }

    #create-select-result{
        display: grid;
        grid-template-columns: 1fr 1fr 1fr 2fr 4fr 1fr;
        grid-template-rows: repeat(11, 1fr);
        row-gap: 10px;
        align-content : center;
        align-items: center;
    }



</style>


</head>
<body>


    <div id="wrap">

        <header>
            
            <!-- 로고 / 급여관리 -->
            <div>
                <div class="header-img-outer">
                    <img alt="로고" src="">
                </div>
                <div>
                    <h1><a href="/md/payroll/main">급여관리</a></h1>
                </div>
            </div>

            <!-- 프로필 사진, 직원명 부서명 직책 -->
            <div>
                <div class="header-img-outer">
                    <img alt="프로필 사진" src="">
                </div>
                <div>
                    <h4>직원명</h4>
                    <h4>부서명-직책</h4>
                </div>
            </div>

        </header>

        <aside>
            <div><a href="/md/payroll/history">급여지급내역</a></div>
            <div><a href="">소득세 상세조회</a></div>
            <div><a href="/md/payroll/account">지급계좌 관리</a></div>
            <div><a href="/md/payroll/management">급여대장 관리</a></div>
            <div><a href="">급여대장 작성</a></div>
        </aside>

        <main>
            <!-- 1 -->
            <div id="create-select-area">
                <form action="" method="">

                    <div>
                        <h4>발급년월</h4>
                        <select name="" id="">
                            <option value="">2022-03</option>
                            <option value="">2022-04</option>
                            <option value="">2022-05</option>
                            <option value="">2022-06</option>
                            <option value="">2022-07</option>
                            <option value="">2022-08</option>
                            <option value="" selected>2022-09</option>
                        </select>
                    </div>

                    <div>
                        <h4>부서명</h4>
                        <select name="" id="">
                            <option value="" selected>개발부</option>
                            <option value="">인사부</option>
                            <option value="" >재무부</option>
                        </select>
                    </div>

                    <div></div>

                    <div>
                        <input type="submit" value="검색">
                    </div>

                </form>
            </div>

            <!-- 2 -->
            
            <div id="create-select-result">

                <div class="create-table-header">부서명</div>
                <div class="create-table-header">사원명</div>
                <div class="create-table-header">직책</div>
                <div class="create-table-header">발급년월</div>
                <div class="create-table-header">작성하기</div>
                <div class="create-table-header">작성상태</div>
            

                <div class="create-table-content">개발부</div>
                <div class="create-table-content">오귀석</div>
                <div class="create-table-content">사원</div>
                <div class="create-table-content">2022-09</div>
                <div>
                    <a href="/md/payroll/create/detail"> 
                        <h3>[급여 대장 작성하기]</h3>
                    </a>    
                </div>
                <div>작성중</div>


            </div>

            




            </div>

        </main>


    </div>

</body>
</html>