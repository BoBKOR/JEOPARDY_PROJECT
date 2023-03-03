<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String firstQ = (String)request.getAttribute("firstQ");
String secondQ = (String)request.getAttribute("secondQ");
String thirdQ = (String)request.getAttribute("thirdQ");
String fourthQ = (String)request.getAttribute("fourthQ");
String fiveQ = (String)request.getAttribute("fiveQ");

System.out.println("JSP+firstQ==>"+firstQ);
System.out.println("JSP+secondQ==>"+secondQ);


%>

	<style>
	table, th, td {
	  border:1px solid black;
	}
	</style>
		<body>
		
		<h2>CREATE YOUR OWN JEOPARDY</h2>
			
		<table id="test" style="width:100%">
		  <tr>
		  <h1>TABLE에 있는 데이터를 DB로 저장</h1>
		    <th><button onclick="document.getElementById('id02').style.display='block'" class="w3-button w3-black">Subject1 [<%=firstQ%>]</button></th>
		    <th><button onclick="document.getElementById('id02').style.display='block'" class="w3-button w3-black">Subject2 [<%=secondQ%>]</button></th>
		    <th><button onclick="document.getElementById('id02').style.display='block'" class="w3-button w3-black">Subject3 [<%=thirdQ%>]</button></th>
		    <th><button onclick="document.getElementById('id02').style.display='block'" class="w3-button w3-black">Subject4 [<%=fourthQ%>]</button></th>
		    <th><button onclick="document.getElementById('id02').style.display='block'" class="w3-button w3-black">Subject5 [<%=fiveQ%>]</button></th>
		  </tr>
		  <tr>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-blue">100</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">100</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">100</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">100</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">100</button></td>
		  </tr>
		  <tr>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">200</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">200</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">200</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">200</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">200</button></td>
		  </tr>
		  <tr>
		  <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">300</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">300</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">300</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">300</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">300</button></td>
		  </tr>
		  <tr>
		  <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">400</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">400</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">400</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">400</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">400</button></td>
		  </tr>
		  <tr>
		  <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">500</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">500</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">500</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">500</button></td>
		    <td><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">500</button></td>
		  </tr>
		</table>
	</div>

	<!-- MODAL's button css -->	
	<style>
	.button {
	  display: inline-block;
	  padding: 8px 17px;
	  font-size: 13px;
	  cursor: pointer;
	  text-align: center;
	  text-decoration: none;
	  outline: none;
	  color: #fff;
	  background-color: #4CAF50;
	  border: none;
	  border-radius: 15px;
	  
	}
	
	.button:hover {background-color: #3e8e41}
	
	.button:active {
	  background-color: #3e8e41;
	  transform: translateY(4px);
	}
	</style>
	
	
<!-- from here MODAL Subjects -->

<form action="QnA" method="get">
	<div class="w3-container">
	  <div id="id02" class="w3-modal">
	    <div class="w3-modal-content w3-animate-top w3-card-4">
	      <header class="w3-container w3-teal"> 
	        <span onclick="document.getElementById('id02').style.display='none'" 
	        class="w3-button w3-display-topright">&times;</span>
	        <h2>Modal Header</h2>
	      </header>
	      <div class="w3-container">
	        <p>SUBJECT</p>
	        <input class="w3-input w3-border w3-round" name="firstQ" type="text"></p>
	        <br>
	        <button class="button" value="Submit" style="float:right;" onclick="document.getElementById('id02').style.display='none'">SAVE</button>
	        <br>
	        <br>
	      </div>
	    </div>
	  </div>
	</div>
</form>

<!-- from here MODAL Questions and Answers -->

<div class="w3-container">
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>Modal Header</h2>
      </header>
      <div class="w3-container">
        <p>Question</p>
   
        <input class="w3-input w3-border w3-round" name="firstQ" type="text"></p>
        <p>Answer</p>
        <input class="w3-input w3-border w3-round" name="firstA" type="text"></p>
        <br>
        <button class="button" style="float:right;" onclick="document.getElementById('id01').style.display='none'">SAVE</button>
        <br>
        <br>
      </div>
    </div>
  </div>
</div>

</body>
</html>