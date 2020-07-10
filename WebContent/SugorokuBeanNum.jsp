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
 	<div class="large-message"><%=sugorokubean.rollDice() %>がでました。
 	</div>
 	<br>
 	<br>
 	<br>
 	<div class="message">
 	<div class="txt">
	<%=sugorokubean.getDrinkText()%>
	<br>
	<%=sugorokubean.getAlcoholLvText() %>
	<br>
	現在の血中アルコール濃度は<%= sugorokubean.alcIntake() %>です。
 	</div>
 	</div>
 	<br>
 	<div class="large-button">
 	<%
 		if (sugorokubean.getLocation() == sugorokubean.getSQUARE() - 1){
 			out.println("<a href='Sugoroku?number=3'>進む</a><br>");
 		} else {
 			out.println("<a href='Sugoroku?number=1'>進む</a><br>");
 		}
 	%>
 	</div>
 </div>
 <% session.setAttribute("sugorokubean", sugorokubean); %>
</body>
</html>
