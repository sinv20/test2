<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 
<link rel="stylesheet" type="text/css" href="${pagePath.request.contextPath}/resources/css/style.css">
<div align="center">
	<b>�� �� ��</b><br><br>
	<form name="f" action="board_delete.do" method="post">
		<input type="hidden" name="num" value="${param.num}"/>
		<table border="1">
			<tr bgcolor="yellow">
				<th>��й�ȣ�� �Է��� �ּ���.
			</tr>
			<tr>
				<td align="center">��й�ȣ :
					<input type="password" name="passwd">
				</td>
			</tr>
			<tr>
				<td align="center" bgcolor="yellow">
					<input type="submit" value="�ۻ���">
					<input type="button" value="�۸��" 
								onclick="window.location='board_list.do'">
				</td>
			</tr>
		</table>
	</form>
</div>





