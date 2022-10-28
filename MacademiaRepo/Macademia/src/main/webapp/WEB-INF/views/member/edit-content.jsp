<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

    #edit-content{
        height: 80vh;
        width: 60vw;
        /* border: 1px solid black; */
        text-align: center;
        font-family:'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
    }
    form{
        height: 75vh;
        width: 40%;
        display: grid;
        grid-template-columns: 1fr 1fr;
        column-gap: 10px;
        /* grid-template-rows: repeat(10, 1fr); */
        margin: auto;
        font-size: 20px;
        box-sizing: border-box;
        align-content: space-around;
    }
    #submit-btn{
        
        grid-column: 1/3;
        background-color: rgb(131, 120, 180);
        width: 50%;
        height: 40px;
        margin: auto;
        margin-top : 10px;
        border: none;
        border-radius: 20px;
        color: white;
    }
    #submit-btn:hover{
        background-color: rgb(103, 93, 151);
        transition: 0.5s;
    }
    h1{
        margin : 20px;
        color: rgb(61, 61, 61);
    }
    #edit-content  label{
        background-color: rgb(233, 233, 233);
        border-radius: 10px;
    }
    #profile-img{
        width: 100px;
        height: 100px;
        margin : auto;
    }
    #name{
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 30px;
        font-weight: 700;
    }

</style>

<div id="edit-content">
    <h1>사원정보수정</h1>
    <hr>
    <form action="" method="post" enctype="multipart/form-data">
        <img id="profile-img" src="/md/resources/upload/profile/${loginMember.profileName}" alt="프로필이미지">
        <div id="name">${loginMember.name}</div>
        <label for="dept">부서</label>
        <input type="text" id="dept" name="dept" value="시설지원팀" disabled> 
        <label for="position">직책</label>
        <input type="text" id="position" name="position" value='DB관리' disabled > 
        <label for="rank">직급</label>
        <input type="text" id="rank" name="rank" value="대리" disabled> 
        <label for="email">사내이메일</label>
        <input type="text" id="email" name="email" value=${loginMember.email} disabled> 
        <label for="pwd">비밀번호</label>
        <input type="text" id="pwd" name="pwd"> 
        <label for="pwd2">비밀번호확인</label>
        <input type="text" id="pwd2" name="pwd2"> 
        <label for="private-mail">개인이메일</label>
        <input type="text" id="private-mail" name="privateEmail" value=${loginMember.privateEmail}> 
        <label for="address">주소</label>
        <input type="text" id="address" name="address" > 
        <label for="address2">상세주소</label>
        <input type="text" id="address2" name="address2" > 
        <label for="phone">전화번호</label>
        <input type="text" id="phone" name="phone" value=${loginMember.phone}> 

        <label for="bank">은행</label>
        <select name="bank" id="bank" name="bank" >
            <option value="none">===선택===</option>
            <option selected value="1">국민은행</option>
            <option value="2">농협</option>
            <option value="3">기업은행</option>
            <option value="4">신한은행</option>
            <option value="5">하나은행</option>
        </select>
        <label for="email">계좌번호</label>
        <input type="text" id="account" name="account" value=${loginMember.account}> 
        <label for="email">프로필사진</label>
        <input type="file" id="profile" name="profile"> 
        <input type="submit" id="submit-btn" value="수정완료">
    </form>
    
</div>

<!-- 주소찾기 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
const width = 500;
const height = 500;
window.onload = function(){
    document.getElementById("address").addEventListener("click", function(){ 
        new daum.Postcode({
            width:width,
            height:height,
            oncomplete: function(data) { 
                document.getElementById("address").value = data.address; 
                document.getElementById("address2").focus(); 
            }
        }).open({
            top:window.screen.height/2-width/2,
            left:window.screen.width/2-height/2
        });
    });
}
</script>
<script>

</script>