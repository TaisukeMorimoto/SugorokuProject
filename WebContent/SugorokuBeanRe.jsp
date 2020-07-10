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

  <div class="boxA">
    <div class="box1"><p style="font-weight: bold">操作</p>
    	<br>
    	<div class="txt">
     	<div class="large-button">
 			<a href="Sugoroku?number=2">・サイコロを振る</a>
 		</div>
 		<br>
 		<div class="button">
 			<a href="Sugoroku?number=4">・最初から</a>
 		</div>
 		</div>


    </div>
    <div class="box2">
    	<p style="font-weight: bold">ステータス</p>
    	<br>
    	<div class="txt">
    	<div class="message">
    		進捗： <%=sugorokubean.getLocation() %>/<%=sugorokubean.getSQUARE()-1 %>
    		<br>
    		<br>
 			回数： <%=sugorokubean.getCount()%>
 		</div>
 		</div>
 		<br>

    </div>
    <div class="box3">
    	<p style="font-weight: bold">今の状態</p>
    	<img src="images/drunk.jpg" alt="酔っ払い" width="50%" height="50%">
 		<br>


    </div>
  </div>
  <br>

 <div class="container">
 	<br>
 	<table class="main">
 		<tbody>
 		 	<tr>
 				<%
					out.println("<tr><th>Start</th>");
 					for (int i = 0; i <= sugorokubean.getSQUARE()-3; i++) {
						out.println("<th></th>");
 					}
 					out.println("<th>Goal</th></tr>");
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

 	<br>
 	<br>

 	<br>
 	<br>

 	<hr>
  </div>
   	<% session.setAttribute("sugorokubean", sugorokubean); %>
</body>
<footer>
 	  <div class="footer">made by T.morimoto, S.doumoto and R.miyashita</div>
</footer>
</html>