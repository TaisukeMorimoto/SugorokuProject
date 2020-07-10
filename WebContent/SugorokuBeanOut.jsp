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

	<!-- ヘッダ -->
	<div class="header">
	<h2><img src="images/title3.PNG" alt="すごろく"></h2>
	</div>


 <div class="container">
 	<br>
 	<div class="large-message"><%=sugorokubean.getCount()%>回目でゴール！
 	</div>
 	<br>
 	<div class="large-message">血中アルコール濃度は<%=sugorokubean.getBloodAlcLv()%>でした。
 	</div>
 	<br>
 	<a><img src="images/congratulation.png" alt="おめでとう"></a>
 	<br>
 	<hr>
 	<div class="button">
 	<a href="Sugoroku?number=4">再チャレンジ</a><br>
 	<% session.setAttribute("sugorokubean", sugorokubean); %>
 	</div>
 </div>
</body>
</html>
