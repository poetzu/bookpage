<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BOOKPAGE | 북마크작성</title>
<link rel="stylesheet" href="../css/write.css"/>

<!-- 이미지파일 유효성확인 -->
<script>
	function check(file) {
		
		var reg= /(.*?)\.(jpg|jpeg|png|gif|bmp)$/;
	
		if(file == "" || file ==null){
			
			var msg = "이미지파일이 존재하지 않습니다. \n파일을 첨부해주세요.";
			
			alert(msg);
			
			return false;
			
		}else if(file != "" || file != null){
			
			if(file.match(reg)){
				alert("게시물이 등록되었습니다.");
			}else { 
				alert("해당 파일은 이미지 파일이 아닙니다. 이미지파일만 올려주세요.");
				
				return false;
			}
		}
		
	} // check() 끝
	
	
</script>

</head>
<%
	String id = (String)session.getAttribute("id");
	
	if(id == null){
		response.sendRedirect("../member/login.jsp");
	}
	
	pageContext.setAttribute("br", "<br>");
	
%>

<body>
<div id="wrap">
<!-- 헤더들어가는 곳 -->
<jsp:include page="../inc/header.jsp"/>
<!-- 헤더들어가는 곳 -->
	
			
<!-- 게시판 -->
<article>
	<h1>공유 북마크 페이지 </h1>
	<form action="bookmarkWritePro.jsp" method="post" enctype="multipart/form-data" onsubmit="return check(image.value)">
		<table id="bookmark">
			<tr>
				<td> &nbsp;아이디&nbsp;<sup>*</sup><br>
				<input type="text" name="id" value="<%=id%>" readonly></td> 
			</tr>
			<tr>
				<td> &nbsp;비밀번호&nbsp;<sup>*</sup><br>
				<input type="password" name="passwd" required="required"></td>				</tr>
			<tr>
				<td> &nbsp;제목&nbsp;<sup>*</sup><br>
				<input type="text" name="subject" required="required"> </td>
			</tr>	
			<tr>
				<td>&nbsp; 글내용&nbsp;<sup>*</sup><br>
				<textarea name="content" rows="13" cols="40"></textarea> </td>
			</tr>	
		</table>
			<tr>
				<td>이미지 첨부<sup>*</sup>&nbsp; &nbsp;
				<input type="file" name="image" id="image" accept="image/*"></td>
			</tr>		
			<br>
		<div id="table_search">
			<input type="submit" value="글쓰기 " class="btn">
			<input type="reset" value="다시작성 " class="btn">
			<input type="button" value="목록 " class="btn"
						   onclick="location.href = 'bookmark.jsp'">
		</div>			
	</form>
	<br>
	<div class="clear"></div>		
</article>
<!-- 게시판 -->
<div class="clear"></div>
<br>
<br>
<br>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/footer.jsp"/>
<!-- 푸터들어가는 곳 -->
</div>
</body>
</html>