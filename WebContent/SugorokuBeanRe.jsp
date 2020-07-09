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
	<div id="header">
	<h1><img src="images/logo.png" alt="すごろく"></h1>
	</div>

 <div class="container">
 	<div class="titleName">すごろく</div>
 	<br>
 	<br>
 	<div class="message">サイコロを振ってね。</div>

 	<table class="main">
 		<tbody>
 		 	<tr>
 				<%
					out.println("<tr><th>スタート</th>");
 					for (int i = 0; i <= sugorokubean.getSQUARE()-3; i++) {
						out.println("<th></th>");
 					}
 					out.println("<th>ゴール</th></tr>");
 				%>
 			</tr>
 			<tr>
 				<%
					out.println("<tr>");
 					for (int i = 0; i <= sugorokubean.getSQUARE() -1; i++) {

 						if (sugorokubean.getBuf(i)) {
 							out.println("<td>");
 							out.println("現在地");
 							out.println("</td>");
 						} else {
 							out.println("<td>");
 							out.println("-");
 							out.println("</td>");
 						}

 					}
					out.println("</tr>");
 				%>
 			</tr>
 		</tbody>
 	</table>
 	<br>
 	<div class="message"><%=sugorokubean.getLocation() %>/<%=sugorokubean.getSQUARE()-1 %>マス目</div>
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
   	<% session.setAttribute("sugorokubean", sugorokubean); %>
</body>
<footer>
 	  <div class="footer">作成者：4シス事2020</div>
</footer>
</html>