<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
String id = (String)session.getAttribute("idKey");
%>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���̵� ã��</title>
<link rel="stylesheet" href="../css/common.css"> 
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
</script>
<style>
#findid{
	width:400px;
	height:100%;
	border:1px solid black;
	margin:30px;
}
</style>
</head>
<body>
 		 <header id="header">
              <h1 class="title" onclick="javascript:location.href='../main/main.jsp'">MOVIEMOA</h1>
            <form method="post" action="../main/search.jsp" class="login">
               <%if (id != null) {%>
                 <span id="hi"><%=id %> ��, �ݰ����ϴ�.</span>
                 <button type="button" class="login" onclick="javascript:location.href='logout.jsp'">Logout</button>
              <%} else {%>
              <button type="button" class="login" onclick="javascript:location.href='login.jsp'">Login</button>	
              <button type="button" class="login" onclick="javascript:location.href='agree.jsp'">Sign in</button><% } %>
              
	              <input type="text" name="search"  id="search" class="login" placeholder="Search...">
	              <input type="submit" id="searchBtn">
              </form>
                  
             <nav id="nav">
                  <span class="btn" onclick="javascript:location.href='../movieList.mo'">MovieInfo</span>
                  <span class="btn" onclick="javascript:location.href='../subpage/boardList.bo?boardtype=BOARDALL'">MovieTalk</span>
                  <span class="btn" onclick="javascript:location.href='../news/list.jsp?listtype=1'">MovieNEWS</span>
                  <span class="btn" onclick="javascript:location.href='../main/loc.jsp'">Theater</span> 
              </nav>
                  
         </header>
              
	  <div id="main" align="center">     
	<form name="searchId" method="post" action="searchfind.jsp">
		<h3>���̵� ã��</h3>
		<div id="findid">
			<h5>�̸�</h5><input type="text" name="Name"><br>
			<h5>�̸���</h5><input type="text" name="Email">
		<p>
		<input type="submit" name="search" value="ã��" name="cancel" value="���" onclick="location.href='startPage.jsp'">
		</p>
		</div>
	</form>		
		</div>

	

	
	
	<div id="footer">
                  <article>
              copyright@<br><br><hr><br>MOVIE�ֽ�ȸ��: ��õ������ ���� ������ 284 ���ͺ��� 4�� �������������б�<p/>��ǥ��ȭ: 032-555-1111&nbsp;/&nbsp;Email: movie@gmail.com 
                </article>      
              </div>

</body>

</html>
