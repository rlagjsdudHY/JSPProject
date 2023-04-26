<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="pack.member.*"%>
<%@page import="javax.servlet.http.HttpSession"%>
<jsp:useBean id="aMgr" class="pack.member.MemberMgr" scope="page" />

 
  
<%
List<MemberBean> memberList = aMgr.memberList();
%>
<table><h1>회원목록</h1>
  <thead>
    <tr>
      <th>UID</th>
      <th>이름</th>
    </tr>
  </thead>
  <tbody>
    <% for (int i =0; i< 10 && i < memberList.size(); i++) {
        MemberBean member = memberList.get(i);%>
      <tr>
        <td><%= member.getUid() %></td>
        <td><%= member.getUname() %></td>
        <td><input type="button" value="탈퇴" class="asubmit" onclick="location.href='/admin/amemberQuitProc.jsp?uid=<%=member.getUid()%>'"></td>
      </tr>
    <% } %>
  </tbody>
</table>
<!-- 회원탈퇴 참조코드 -->
<%-- <input type="button" value="상세정보" class="submit" onclick="location.href='../member/member_info.jsp?id=<%=member.getUid()%>'"> --%>
<%-- <input type="button" value="회원 삭제" class="cancel" onclick="confirmDelete('<%=member.getUid()%>')"> --%>
