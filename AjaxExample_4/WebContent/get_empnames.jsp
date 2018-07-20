<%@page import="java.sql.*"%>
<%
out.println("in side get_empnames.jsp");
response.setContentType("text/xml");
int no=Integer.parseInt(request.getParameter("dno"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","");

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select ename from emp where deptno="+no);
out.println("<emp>");

while(rs.next()){
	out.println("<ename>"+rs.getString(1)+"</ename>");
}
out.println("</emp>");
con.close();
%>
