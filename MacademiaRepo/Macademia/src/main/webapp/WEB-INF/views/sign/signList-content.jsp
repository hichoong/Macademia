<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <style>
    h3{
    margin: 15px 0 0	;
    
    
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
    	height:100%;
    	
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
	<h3>나의 결재</h3>
	<hr>
	<div id="work">
				<table id="my_work" border="1">
					
						<tr>
							<th>번호</th>
							<th>제목</th>

							<th>요청날짜</th>
							<th>마감날짜</th>
							
						</tr>
						
						 <c:forEach items="${slVo}" var="x">
						    <tr>
							<td>${x.S_NO}</td>
						 	<td><a href="/md/work/slaveDetail/${x.S_NO}">${x.S_TITLE}</td>
							<td>${x.S_DATE}</td>
							
						</tr>
   						 </c:forEach>
						
					
				
				</table>
				
				<div id="page-area">
					<ul id="page">
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
					</ul>
				</div>
				
				
			</div>
			</div>