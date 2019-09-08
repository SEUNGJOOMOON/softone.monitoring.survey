<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/userLogin.css" />
</head>
<body>
    <img src="${pageContext.request.contextPath}/resources/img/hospital_logo/gbss.png" alt="" class="hospital_logo">
    <div class="login_form">
        <h1>건강영향 설문조사</h1>
        <form name="loginFrm">
            <label><span class="login_notice">이름 : </span><input type="text" placeholder="예 : 홍길동"></label>
            <label><span class="login_notice">생년월일 : </span><input type="text" placeholder="예 : 19910203"></label>
            <button class="login_btn">확인</button>
        </form>
    </div>
</body>
</html>