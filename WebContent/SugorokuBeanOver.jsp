<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="sugorokubean" scope="application" class="practice.SugorokuBean" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<title>すごろく</title>
</head>
<body>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <div class="container">

	<!-- ヘッダ -->
	<div class="header">
	<h2><img src="images/title3.PNG" alt="すごろく"></h2>
	</div>


 <div class="container">
 	<br>
 	<a><img src="images/gameover.jpg" alt="gameover"></a>
 	<br>
 	<div class="large-message">血中アルコール濃度は<%=sugorokubean.getBloodAlcLv()%>です。致死量。
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
