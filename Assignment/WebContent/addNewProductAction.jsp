<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String category = request.getParameter("category");
	String price = request.getParameter("price");
	String available = request.getParameter("available");

	try {
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("insert into items values(?,?,?,?,?)");
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setString(3, category);
		ps.setString(4, price);
		ps.setString(5, available);
		ps.executeUpdate();
		response.sendRedirect("addNewProduct.jsp?msg=done");

	} catch (Exception e) {
		System.out.println(e);
		response.sendRedirect("addNewProduct.jsp?msg=wrong");

	}
%>