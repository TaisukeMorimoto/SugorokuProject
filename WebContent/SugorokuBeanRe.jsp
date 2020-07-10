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

  <div class="boxA">

    <div class="box1">
    <%--
    <div class="card" style="width: 20rem;">
    <h5 class="card-title">操作</h5>
    <p class="card-text">すごろくを振ってゴールまで辿り着こう！飲み過ぎには気をつけて...</p>
    	<br>
    	<br><br>
     		<a class="btn btn-primary" href="Sugoroku?number=2">サイコロを振る</a>
     		<a class="btn btn-secondary" href="Sugoroku?number=4">最初から</a>
		<br>
		<br><br><br>
		</div>
--%>
<div class="card text-white bg-dark mb-3" style="width: 20rem;">
  <div class="card-body">
    <h4 class="card-title">操作</h4><br>
    <p class="card-text" style="text-align: left">すごろくを振ってゴールまで辿り着こう！<br>飲み過ぎには気をつけて...</p><br><br>
    <a href="Sugoroku?number=2" class="btn btn-primary">サイコロをふる</a>
    <a href="Sugoroku?number=4" class="btn btn-primary btn-sm">最初から</a>
	<br><br><br>
  </div>
</div>




    </div>
    <div class="box2">
        <div class="card text-white bg-dark mb-3" style="width: 20rem;">
        <div class="card-body">
        <h5 class="card-title">ステータス</h5>
    	<br><br>
    	<div class="txt">
    		<p style="display: inline-block; text-align: left;">　進捗： <%=sugorokubean.getLocation() %>/<%=sugorokubean.getSQUARE()-1 %>
    		<br>
    		<br>
 			　回数： <%=sugorokubean.getCount()%>
 			<br>
    		<br>
 			　血中アルコール濃度： <%=sugorokubean.getBloodAlcLv()%></p><br><br><br>
 		</div>
 		</div>
 		</div>

    </div>
    <div class="box3">
    	<div class="card border-primary mb-3" style="max-width: 200px;">
    	<div class="card-body text-primary">
    	<h5 class="card-title">今の状態</h5>
	 	<%
	 		if (sugorokubean.getBloodAlcLv() < 5){
	 			out.println("<img class='card-img-top' src='images/0-5.jpg' alt='元気' width='20%' height=200%'>");
	 			out.println("<div class='card-body'><p class='card-text'>いっぱい飲むぞ〜</p></div>");
	 		} else if ((sugorokubean.getBloodAlcLv() >= 5) && (sugorokubean.getBloodAlcLv() < 10)) {
	 			out.println("<img class='card-img-top' src='images/5-10.png' alt='やや酔っ払い' width='40%' height='40%'>");
	 			out.println("<div class='card-body'><p class='card-text'>楽しいなあ</p></div>");
	 		} else if ((sugorokubean.getBloodAlcLv() >= 10) && (sugorokubean.getBloodAlcLv() < 15)) {
	 			out.println("<img class='card-img-top' src='images/10-15.jpg' alt='酔っ払い' width='40%' height='40%'>");
	 			out.println("<div class='card-body'><p class='card-text'>ちょっとやばいかも…</p></div>");
	 		} else if ((sugorokubean.getBloodAlcLv() >= 15) && (sugorokubean.getBloodAlcLv() < 20)) {
	 			out.println("<img class='card-img-top' src='images/15-20.jpg' alt='やばい酔っ払い' width='40%' height='40%'>");
	 			out.println("<div class='card-body'><p class='card-text'>吐く... マジ吐く...</p></div>");
	 		}
	 	%>

    </div>
  </div>
  </div>
  <br>
 	<br>
 	<table class="main" style="text-align: center">
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
 							out.println("");
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
  </div>

   	<% session.setAttribute("sugorokubean", sugorokubean); %>
</body>
<footer>
 	  <div class="footer">made by T.morimoto, S.doumoto and R.miyashita</div>
</footer>
</html>