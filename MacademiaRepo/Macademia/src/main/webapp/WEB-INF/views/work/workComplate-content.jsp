<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <style>
      h3{
    margin: 15px 0 0	;
    font-weight:900;
    }
    #work {
    margin: 0 auto;
  
    width:1000px;
    height:300px;
    border:1px solid #6667AB;
    margin-top:30px;
    }
    
    #my_work{
    	width:100%;
    	
    	
    }
    #my_work2{
    	width:100%;
    	
    	
    }
    
     th{
    background-color:#6667AB;
    color: #fff;
    font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
    text-align: center;
    }
    td{
    font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
    text-align: center;
    border-bottom: solid 1px #0000001a;
    }
    #page-area{
    margin:20px 0 0 350px;
    }
    #page{
    display:flex;
    
    }
    #page li{
    width:25px;
    height:25px;
    text-align:center;
    color:#fff;
    border-radius:5px;
    margin-left:5px;
    
    background-color:#6667AB;
    }
    </style>
    
<div id="center_menu">
	<h3>처리한 업무</h3>
	<hr>
	<div id="work">
				<table id="my_work">
					
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>내용</th>
							<th>요청날짜</th>
							<th>마감날짜</th>
							
						</tr>
						</table>
						<table id="my_work2" >
					 <c:forEach items="${wList}" var="x">
						    <tr>
							<td>${x.WNo}</td>
						 	<td><a href="/md/work/completeDatail/${x.WNo}">${x.WTitle}</td>
							<td>${x.WDate}</td>
							<td>${x.WDeadLine}</td>
						 
						</tr>
   						 </c:forEach>
					
				
				</table>
				
				<div id="page-area">
					<ul id="page">
						<c:if test="${pv.startPage ne 1}">
		<li><a href="/md/work/complate/${pv.startPage - 1}" >이전</a></li>
	</c:if>
	
	<c:forEach begin="${ pv.startPage }" end="${ pv.endPage }" var="i">
	  <li> <a href="/md/work/complate/${i}">${i}</a></li> 
	</c:forEach>
	
	<c:if test="${pv.endPage ne pv.maxPage }">
		<a href="/md/work/complat/${pv.endPage + 1}">다음</a>
	</c:if>	
					</ul>
				</div>
				
				
			</div>
			</div>