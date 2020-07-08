<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="sugorokubean" scope="session" class="practice.SugorokuBean" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<title>すごろく</title>
</head>
<body>
 <div class="container">
 	<br>
 	<div class="message"><%=sugorokubean.rollDice() %>がでました。
 	</div>
 	<br>
 	<br>
 	<%
 		if (sugorokubean.getLocation() == sugorokubean.getSQUARE() - 1){
 			out.println("<a href='Sugoroku?number=3'>進む</a><br>");
 		} else {
 			out.println("<a href='Sugoroku?number=1'>進む</a><br>");
 		}
 	%>
 </div>
</body>
</html>
