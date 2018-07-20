<%@page import="java.sql.*"%>
<%
out.println("in side get_dept_details.jsp");
	response.setContentType("text/xml");
	int no = Integer.parseInt(request.getParameter("dno"));
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "");
	PreparedStatement pst = con.prepareStatement("select dname,loc from dept where deptno=?");
	pst.setInt(1, no);
	ResultSet rs = pst.executeQuery();
	out.println("<dept>");
	while (rs.next()) {
		out.println("<depname>" + rs.getString(1) + "</depname>");
		out.println("<deploc>" + rs.getString(2) + "</deploc>");
	}
	out.println("</dept>");
%>
