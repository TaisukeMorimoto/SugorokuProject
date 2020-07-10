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
 			<br>
    		<br>
 			血中アルコール濃度： <%=sugorokubean.getBloodAlcLv()%>
 		</div>
 		</div>
 		<br>

    </div>
    <div class="box3">
    	<p style="font-weight: bold">今の状態</p>
    	<br>
	 	<%
	 		if (sugorokubean.getBloodAlcLv() < 5){
	 			out.println("<img src='images/0-5.jpg' alt='元気' width='30%' height='30%'>");
	 		} else if ((sugorokubean.getBloodAlcLv() >= 5) && (sugorokubean.getBloodAlcLv() < 10)) {
	 			out.println("<img src='images/5-10.png' alt='やや酔っ払い' width='40%' height='40%'>");
	 		} else if ((sugorokubean.getBloodAlcLv() >= 10) && (sugorokubean.getBloodAlcLv() < 15)) {
	 			out.println("<img src='images/10-15.jpg' alt='酔っ払い' width='40%' height='40%'>");
	 		} else if ((sugorokubean.getBloodAlcLv() >= 15) && (sugorokubean.getBloodAlcLv() < 20)) {
	 			out.println("<img src='images/15-20.jpg' alt='やばい酔っ払い' width='40%' height='40%'>");
	 		}
	 	%>


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