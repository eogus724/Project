<%@page import="com.ezv.Dto.MemberVO"%>
<%@page import="com.ezv.Dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberUpdateForm</title>
<style>
h2,#tdh{
	color:#A5732A;
}
</style>
</head>
<body>
<%
	String id=request.getParameter("id"); 
	MemberDAO mdao = MemberDAO.getInstance();
	MemberVO mvo = mdao.oneSelectMember(id);	
%>
<div align="center">
<h2>회원수정하기</h2>
<form action="MemberUpdateProc.jsp" method="post">
	<table width="400" border="1">
		<tr height = "50">
			<td id="tdh" align="center" width="150">아이디</td>
			<td width = "250">&nbsp;<%=mvo.getId() %></td>
		</tr>
		<tr height = "50">	
			<td id="tdh" align="center" width="150">이름</td>
			<td width="250">&nbsp;
			<input type ="text" name="name" value="<%=mvo.getName() %>">
			</td>
		</tr>
		<tr height = "50">
			<td id="tdh" align="center" width="150">나이</td>
			<td width="250">&nbsp;
			<input type ="number" name="age" value="<%=mvo.getAge() %>">
			</td>
		</tr>
		<tr height = "50">	
			<td id="tdh" align="center" width="150">성별</td>
			<td width="250">&nbsp;
			<input type ="text" name="gender" value="<%=mvo.getGender() %>">
			</td>	
		</tr>
		<tr height = "50">	
			<td id="tdh" align="center" width="150">전화번호</td>
			<td width="250">&nbsp;
			<select name = "tel1" style="height:28px;">
					<option value="<%=mvo.getTel1()%>">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
			</select>&nbsp;-&nbsp;
			<input type ="text" name="tel2" value="<%=mvo.getTel2() %>" size = 5>&nbsp;-&nbsp;	
			<input type ="text" name="tel3" value="<%=mvo.getTel3() %>" size = 5>
			</td>		
		</tr>
		
		<tr height = "50">	
			<td id="tdh" align="center" width="150">이메일</td>
			<td width="250">&nbsp;
			<input type ="email" name="email" value="<%=mvo.getEmail() %>">
			</td>	
		</tr>
		
		<tr height = "50">
			<td id="tdh" align="center" width="150">패스워드</td>
			<td width="250">&nbsp;
				<input type="password" name="pwd1">
			</td>
		</tr>
		
		<tr height="50">
			<td  id="tdh"align="center" colspan="2"  id="tdh">
				<input type="hidden" name="id" value="<%=mvo.getId()%>">
				<input type="submit" value="회원 수정">
				<a href="../mypage/pwdupdate.jsp"><button type="button">비밀번호 수정</button></a>
				<a href="../mypage/Mypage.jsp"><button type="button">수정 취소</button></a>
			</td>	
	</table>
	</form>
</div>
 <%@ include file="../main/footer.jsp" %>
</body>
</html>