<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>
    <title>EMP 조회</title>
</head>
<body>

<h2>EMP 테이블 조회</h2>

<table border="1">
<tr>
    <th>사원번호</th>
    <th>사원명</th>
    <th>직급</th>
    <th>상관번호</th>
    <th>입사일자</th>
    <th>급여</th>
    <th>커미션</th>
    <th>부서번호</th>
</tr>

<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try {
    // 1. 드라이버 로드
    Class.forName("oracle.jdbc.driver.OracleDriver");

    // 2. DB 연결
    String url = "jdbc:oracle:thin:@localhost:1522:xe";
    String user = "scott";
    String password = "tiger";

    conn = DriverManager.getConnection(url, user, password);

    // 3. SQL 실행
    String sql = "SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp";
    stmt = conn.createStatement();
    rs = stmt.executeQuery(sql);

    // 4. 결과 출력
    while(rs.next()) {
%>
<tr>
    <td><%= rs.getInt("empno") %></td>
    <td><%= rs.getString("ename") %></td>
    <td><%= rs.getString("job") %></td>
    <td><%= rs.getObject("mgr") == null ? "null" : rs.getObject("mgr") %></td>
    <td><%= sdf.format(rs.getDate("hiredate")) %></td>
    <%double sal = rs.getDouble("SAL");%>
	<td>
			<%
			if (sal == (int)sal) {   // 정수인 경우
			%>
			    <%= (int)sal %>
			<%
			} else {                 // 소수점 있는 경우
			%>
			    <%= String.format("%.2f", sal) %>
			<%
			}
			%>
	</td>
  	 	<%
		int comm = rs.getInt("comm");
		if(rs.wasNull()) {
		%>
		    <td>null</td>
		<%
		} else {
		%>
		    <td><%= comm %></td>
		<%
		}
	%>
    <td><%= rs.getInt("deptno") %></td>
</tr>
<%
    }
} catch(Exception e) {
%>
<tr>
    <td colspan="8">데이터베이스 연결 실패<%= e.getMessage() %></td>
</tr>
<%
} finally {
		try{
			if(rs != null){rs.close();}
			if(stmt != null){stmt.close();}
			if(conn != null){conn.close();}
		}catch(SQLException se){
			se.printStackTrace();
		}
}
%>

</table>

</body>
</html>