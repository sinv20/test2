<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<link rel="stylesheet" type="text/css" href="${pagePath.request.contextPath}/resources/css/style.css">
<div align="center">
	<b>�� �� ��</b>
	<table border="0" width="800">
		<tr bgcolor="yellow">
			<td align="right"><a href="board_write.do">�۾���</a></td>
		</tr>
	</table>
	<table border="1" width="800">
		<tr bgcolor="green">
			<th>��ȣ</th>
			<th width="40%">����</th>
			<th>�ۼ���</th>
			<th>�ۼ���</th>
			<th>��ȸ</th>
			<th>IP</th>
			<th>����</th>
		</tr> 
	<c:if test="${empty boardList}">		
		<tr>
			<td colspan="7">
				��ϵ� �Խñ��� �����ϴ�.
			</td>
		</tr>
	</c:if>		
	<c:forEach var="dto" items="${boardList}">		
		<tr>
		<td>${dto.num}</td>
		<td>
		<a href="content.do?num=${dto.num}">
					${dto.subject}
				</a>
				</td>		
			<td>${dto.writer}</td>
			<td>${dto.reg_date}</td>
			<td>${dto.readcount}</td>
			<td>${dto.ip}</td>
			<c:if test="${dto.filesize != 0}">
			<td><img src="${pageContext.request.contextPath}/resources/img/folder.gif"></td>
			</c:if>
			<c:if test="${dto.filesize == 0}">
			<td><img src="${pageContext.request.contextPath}/resources/img/re.gif"></td>
			</c:if>
		</tr>		
	</c:forEach>	
	</table>
</div>	






