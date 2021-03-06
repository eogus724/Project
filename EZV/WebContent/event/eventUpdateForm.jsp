<%@page import="com.ezv.Dto.EBoardBean"%>
<%@page import="com.ezv.Dao.EBoardDAO"%>
<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eventUpdateForm</title>
</head>
<body>
<%
	int num=Integer.parseInt(request.getParameter("num").trim());
	EBoardDAO dao=new EBoardDAO();
	
	EBoardBean bean=dao.getOneUpdateBoard(num);
%>
<section id="page-breadcrumb">
	<div class="vertical-center sun">
	     <div class="container">
	        <div class="row">
	            <div class="action">
	                <div class="col-sm-12">
	                    <h1 class="title" >EZV의 이벤트</h1>
	                    <p>EZV에서 여러분들을 위한 이벤트를 준비했습니다~!<br>
						오늘도 행복이 넘치는 이벤트를 잡으세요 ~!</p>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</section>
  <section id="blog-details" class="padding-top">
        <div class="container">
            <div class="row" align="center">
                <div class="eventsize"> 
                    <div class="row">
                        <div class="single-blog blog-details two-column">
                            <div class="post-content overflow">
                            	<div class="post-thumb">
                            	<form method="post" action="eventUpdateProc.jsp" enctype="multipart/form-data" >
	                                 <table width="800">
	                                 	<tr>
	                                 		<td width="200">사진</td>
	                                 		<td>
	                                 			<img src="${pageContext.request.contextPath }/upload/<%=bean.getFileName() %>" class="img-responsive" width="70%">
	                                 			<input type="file" name="file" size="40">
											</td>
	                                 	</tr>
	                                 	<tr height="40">
	                                 		<td width="200">제목</td>
	                                 		<td><input type="text" name="title" size="100" value="<%=bean.getTitle()%>"></td>
	                                 	</tr>
	                                 	<tr height="40">
	                                 		<td width="200">부제목</td>
	                                 		<td><input type="text" name="subtitle" size="100" value="<%=bean.getSubtitle()%>"></td>
	                                 	</tr>
	                                 	<tr height="40">
	                                 		<td width="200">기간</td>
	                                 		<td><input type="text" name="term" size="100" value="<%=bean.getTerm()%>"></td>
	                                 	</tr>
	                                 	<tr>
	                                 		<td width="200">내용</td>
	                                 		<td><textarea wrap="hard" rows="10" cols="100" name="content" align="left"><%=bean.getContent() %></textarea></td>
	                                 	</tr>
	                                 	<tr height="40">
												<td colspan="2" align="center">
								                    <input type="hidden" name="num" value="<%=bean.getNum() %>">
													<input type="submit" value="글수정">&nbsp;&nbsp;
													<input type="reset" value="다시 작성">&nbsp;&nbsp;
													<input type="button" onclick="location.href='eventmain.jsp'" value="목록">
												</td>
											</tr>
	                                 </table>
                                </form>
                            </div>
                        </div>
                    </div>
                 </div>
                
            </div>
        </div>
    </section>
<%@ include file="../main/footer.jsp" %>
</body>
</html>