<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="sugorokubean" scope="application" class="practice.SugorokuBean" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<title>すごろく</title>
</head>
<body>
 <div class="container">
 	<br>
 	<div class="message"><%=sugorokubean.getCount()%>回目でゴール！
 	</div>
 	<br>
 	<br>
 	<hr>
 	<div class="button">
 	<a href="Sugoroku?number=4">再チャレンジ</a><br>
 	<% session.setAttribute("sugorokubean", sugorokubean); %>
 	</div>
 </div>
</body>
</html>
