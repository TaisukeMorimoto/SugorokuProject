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
 	<div class="titleName">すごろく</div>
 	<br>
 	<br>
 	<br>
 	<div class="message">サイコロを振ってね。</div>
 	<br>
 	<br>
 	<table class="main">
 		<tbody>
 			<tr>
 				<%
 					out.println("<tr><td>スタート</td></tr>");
 					for (int i = 0; i <= 9; i++) {
 						out.println("<tr>");
 						out.println("<td>");
 						if (sugorokubean.getBuf(i)) {
 							out.println("現在地");
 						} else {
 							out.println("-");
 						}
 						out.println("</td>");
 						out.println("</tr>");
 					}
 					out.println("<tr><td>ゴール</td></tr>");
 				%>
 			</tr>
 		</tbody>
 	</table>
 	<br>
 	<div class="message"><%=sugorokubean.getLocation() %></div>
 	<br>
 	<div class="message"><%=sugorokubean.getCount()%>回目
 	</div>
 	<br>
 	<br>
 	<div class="button">
 	<a href="Sugoroku?number=2">サイコロを振る</a></div>
 	<br>
 	<br>
 	<div class="button">
 	<a href="Sugoroku?number=4">最初からやる</a></div>
 	<hr>
  </div>
</body>
<footer>
 	<div class="container">
 	  <div class="message">作成者：4シス事2020</div>
 	</div>
</footer>
</html>