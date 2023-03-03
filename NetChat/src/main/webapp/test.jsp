<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="menu.jsp" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p style="text-align:center;">
<img src="jeopardy_logo.png" width="650",height="350">
</p>

<%
String IP_address = (String)request.getAttribute("ipaddress");
//String jordan = (String)request.getAttribute("jordy");
%>

<style>
	.block{
		position: absolute;
		top: 85px;
		right: 55px;
		width: 310px;
		height: 60px;
	}
</style>

<div class="container">
	<div class="block"> <h3>[<%=IP_address%>]님 환영합니다.</h3></div>
</div>

<%String sixby = (String)request.getAttribute("sixby");
    		  System.out.println("JSP sixby ==>"+sixby);
  String nineby = (String)request.getAttribute("nineby");
    		  System.out.println("JSP nineby ==>"+nineby);
  String twelveby = (String)request.getAttribute("twelveby");
  			  System.out.println("JSP twelveby ==>"+twelveby);
//}%>

	<%if(sixby!=null){%>
	<h1 style="text-align:center">게임 화면 테스트 6x6 누를시 빨간색 네모표시</h1>
	<p style="text-align:center;">
	<img src="testred.png">
	</p>
	<%}else if(nineby!=null){ %>
		<h1 style="text-align:center">NINEBY</h1>
		<p style="text-align:center;">
		<img src="gametest.png">
	<%}else if(twelveby!=null){%>
		<h1 style="text-align:center">TWELVEBY</h1>
	<%}%>
<br>
<br>

<form action="Homepage" method="get">
<fieldset style="width:300px; height:150px; margin:0 auto;">
    <legend>게임을 구성해주세요.</legend>
    <div>
      <input type="checkbox" id="sixby" name="sixby">
      <label for="scales">6x6</label>
    </div>

    <div>
      <input type="checkbox" id="nineby" name="nineby">
      <label for="horns">9x9</label>
    </div>
    
    <div>
      <input type="checkbox" id="twelveby" name="twelveby">
      <label for="horns">12x12</label>
    </div>
    <br>
    <input type="submit" value="확인">
</fieldset>

<!--<input type="submit" value="Submit"> -->
</form>

<!-- 
<form action="Homepage" method="get">	
	채팅 입력칸: <input type="text" name="chat"/> 
	<button type="submit"> 전송 </button>
</form>
 -->


</body>
</html>