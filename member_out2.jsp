<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.sql.*" %>
<center>
<TABLE border="1" width="700" cellpadding="5">
<TR align="center" bgcolor="pink">
	<TD> �̸� </TD>
	<TD> �ּ� </TD>
	<TD> ����ó </TD>
</TR>
<%
try{
	   String driverName = "org.gjt.mm.mysql.Driver";
        String dbURL = "jdbc:mysql://localhost:3306/test";
    	Class.forName(driverName);
    	Connection con = DriverManager.getConnection(dbURL, "root", "dongyang");
	
	
	Statement stmt = con.createStatement();
	
	String strSQL = "SELECT * FROM tblMember";
	ResultSet rs = stmt.executeQuery(strSQL);
	
	while(rs.next()){
%>
<TR>
	<TD><%=rs.getString("name") %></TD>
	<TD><%=rs.getString("addr") %></TD>
	<TD><%=rs.getString("tel") %></TD>
</TR>
<%
	}
	rs.close();
	stmt.close();
	con.close();
}catch(SQLException ex){ }
 %>
</TABLE>

</center>
</body>
</html>