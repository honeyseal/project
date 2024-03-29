<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = (String)session.getAttribute("idKey");
%>	
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>회원가입</title>
<link rel="stylesheet" href="../css/common.css"> 
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
    function idCheck(id) {
        frm = document.regFrm;
        if (id == "") {
            alert("아이디를 입력해 주세요.");
            frm.id.focus();
            return;
        }
        url = "idCheck.jsp?id=" + id;
        window.open(url, "IDCheck", "width=300,height=150");
    }

    function zipSearch() {
        url = "zipSearch.jsp?search=n";
        window
                .open(url, "ZipCodeSearch",
                        "width=500,height=300,scrollbars=yes");
    }
</script>
<style type="text/css">


button a {
	text-decoration: none;
	color: antiquewhite;
}

button a:link {
	text-decoration: none;
	color: antiquewhite;
}

button a:visited {
	text-decoration: none;
	color: antiquewhite;
}

button a:active {
	text-decoration: none;
	color: antiquewhite;
}

.mid {
	text-align: center;
}

#main {
	margin-top: 20px;
	width: 960px;
	margin: 0 auto;
	padding: 30px;
	overflow: hidden;
}

table {
	float: left;
	width: 600px;
}

form {
	overflow: hidden;
}

textarea {
	resize: none;
}

td {
	padding: 5px;
}
</style>
</head>
<body onLoad="regFrm.id.focus()">
	 <header id="header">
              <h1 class="title" onclick="javascript:location.href='../main/main.jsp'">MOVIEMOA</h1>
            <form method="post" action="../main/search.jsp" class="login">
               <%if (id != null) {%>
                 <span id="hi"><%=id %> 님, 반갑습니다.</span>
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
	<div align="center" id="main">
		<br /> <br />
		<form name="regFrm" method="post" action="memberProc.jsp">
			<table border="1" cellspacing="0" cellpadding="2" width="600">
				<tr>
					<td colspan="3" class="mid"><h2
							style="margin-top: 0px; margin-bottom: 0px">회원 가입</h2></td>
				</tr>
				<tr>
					<td class="mid">아이디</td>
					<td><input name="id" size="15" /> <input type="button"
						value="ID중복확인" onClick="idCheck(this.form.id.value)" /></td>
					<td>아이디를 적어 주세요.</td>
				</tr>
				<tr>
					<td class="mid">패스워드</td>
					<td><input type="password" name="pwd" size="15" /></td>
					<td>패스워드를 적어주세요.</td>
				</tr>
				<tr>
					<td class="mid">패스워드 확인</td>
					<td><input type="password" name="repwd" size="15" /></td>
					<td>패스워드를 확인합니다.</td>
				</tr>
				<tr>
					<td class="mid">이름</td>
					<td><input name="name" size="15" /></td>
					<td>이름을 적어주세요.</td>
				</tr>
				<tr>
					<td class="mid">성별</td>
					<td>남<input type="radio" name="gender" value="1" checked /> 여<input
						type="radio" name="gender" value="2" />
					</td>
					<td>성별을 선택 하세요.</td>
				</tr>
				<tr>
					<td class="mid">생년월일</td>
					<td><input name="birthday" size="6" /> ex)830815</td>
					<td>생년월일를 적어 주세요.</td>
				</tr>
				<tr>
					<td class="mid">Email</td>
					<td><input name="email" size="30" /></td>
					<td>이메일를 적어 주세요.</td>
				</tr>
				<tr>
					<td class="mid">주소</td>
					<td><input class="postcodify_postcode5" value=""
						name="zipcode" size="5" readonly /> <input
						id="postcodify_search_button" type="button" value="우편번호찾기" /><br />
						<input class="postcodify_address" name="address" size="45"
						readonly /><br /> <input type="text" name="details"
						class="postcodify_details" value="" /></td>
					<td>우편번호를 검색하세요.</td>
				</tr>
				<tr>
					<td class="mid">영화 장르</td>
					<td>코미디<input type="checkbox" name="genre" value="코미디" /> 액션<input
						type="checkbox" name="genre" value="액션" /> SF<input
						type="checkbox" name="genre" value="SF" /> 스릴러<input
						type="checkbox" name="genre" value="스릴러" /> 판타지<input
						type="checkbox" name="genre" value="판타지" /> 로멘스<input
						type="checkbox" name="genre" value="로멘스" />
					</td>
					<td>장르를 선택 하세요.</td>
				</tr>
				<tr>
					<td class="mid">소개</td>
					<td colspan="2"><input type="text"
						style="width: 509px; height: 304px" name="info" /></td>
				</tr>
				<tr>
					<td colspan="3" align="center"><input type="button"
						value="회원가입" onclick="inputCheck()" /> &nbsp; &nbsp; <input
						type="reset" value="다시쓰기" /> &nbsp; &nbsp; <input type="button"
						value="로그인" onClick="javascript:location.href='login.jsp'" /></td>
				</tr>
			</table>
		</form>
		 <div id="footer">
                  <article>
              copyright@<br><br><hr><br>MOVIE주식회사: 인천광역시 서구 서곶로 284 새터빌딩 4층 연희직업전문학교<p/>대표전화: 032-555-1111&nbsp;/&nbsp;Email: movie@gmail.com 
                </article>      
              </div>
	</div>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"
		type="text/javascript"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
        $(function () {
            $("#postcodify_search_button").postcodifyPopUp();
        });
    </script>
</body>
</html>
