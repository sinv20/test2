<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" type="text/css" href="${pagePath.request.contextPath}/resources/css/style.css">
<div align="center">
   <b>�۳��� ����</b><br><br>
   <table border="1" width="500">
      <tr height="30">
         <th width="20%" bgcolor="yellow">�۹�ȣ</th>
         <td align="center" width="30%">${getBoard.num}</td>
         <th width="20%" bgcolor="yellow">��ȸ��</th>
         <td align="center" width="30%">${getBoard.readcount}</td>
      </tr>
      <tr height="30">
         <th width="20%" bgcolor="yellow">�ۼ���</th>
         <td align="center" width="30%">${getBoard.writer}</td>
         <th width="20%" bgcolor="yellow">�ۼ���</th>
         <td align="center" width="30%">${getBoard.reg_date}</td>
      </tr>
      <tr height="30">
         <th width="20%" bgcolor="yellow">������</th>
         <td align="center" colspan="3">
            ${getBoard.subject}
         </td>
      </tr>
      <tr height="80">
         <th width="20%" bgcolor="yellow">�۳���</th>
         <td colspan="3" >
            ${getBoard.content}
         </td>
      </tr>
      <c:if test="${getBoard.filesize != 0}">
      <tr>
         <th width="20%" bgcolor="yellow">���ϸ�</th>
         <td colspan="3" >   ${getBoard.filename}</td>
      </tr>
   </c:if>
      <tr bgcolor="yellow">
         <td colspan="4" align="right">
            <input type="button" value="�ۼ���"
            onclick="window.location='board_update.do?num=${getBoard.num}'">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" value="�ۻ���"
            onclick="window.location='board_delete.do?num=${getBoard.num}'">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" value="�۸��" onclick="window.location='board_list.do'">
         </td>
      </tr>
   </table>
</div>














