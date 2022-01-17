<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
      * {
        margin: 0px;
        padding: 0px;
        text-decoration: none;
        font-family: sans-serif;
      }
      body {
        background-color: #34495e;
        width: 100%;
        height: 100%;
      }
      .loginForm {
        position: absolute;
        width: 300px;
        height: 470px;
        padding: 30px, 20px;
        background-color: #FFFFFF;
        text-align: center;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        border-radius: 15px;
      }
      .loginForm h2 {
        text-align: center;
        margin: 30px;
      }
      .emailForm {
        border-bottom: 2px solid #adadad;
        margin: 30px;
        padding: 10px 10px;
      }
      .passForm {
        border-bottom: 2px solid #adadad;
        margin: 30px;
        padding: 10px 10px;
      }
      .email {
        width: 100%;
        border: none;
        outline: none;
        color: #636e72;
        font-size: 16px;
        height: 25px;
        background: none;
      }
      .pw {
        width: 100%;
        border: none;
        outline: none;
        color: #636e72;
        font-size: 16px;
        height: 25px;
        background: none;
      }
      .btn {
        position: relative;
        left: 40%;
        transform: translateX(-50%);
        margin-bottom: 40px;
        width: 80%;
        height: 40px;
        background: linear-gradient(125deg, #81ecec, #6c5ce7, #81ecec);
        background-position: left;
        background-size: 200%;
        color: white;
        font-weight: bold;
        border: none;
        cursor: pointer;
        transition: 0.4s;
        display: inline;
      }
      .btn:hover {
        background-position: right;
      }
      .bottomText {
        text-align: center;
      }
    </style>
  </head>

  <body>
    <form action="<%=request.getContextPath() %>/Controller" method="post" class="loginForm">
      <input type="hidden" name="action" value="createaccount" >
      <h2>가입하기</h2>
      <div class="emailForm">
        <input type="text" class="email" name="email" placeholder="Email" value="">
      </div>
      <div class="passForm">
        <input type="password" class="pw" name="password" placeholder="비밀번호" value="">
      </div>
      <div class="passForm">
        <input type="password" class="pw" name="repeatpassword" placeholder="비밀번호확인" value="">
      </div>
      <button type="submit" class="btn">가입하기</button>
      <div class="bottomText">
        <%= request.getAttribute("message") %>
      </div>
    </form>
  </body>

  </html>