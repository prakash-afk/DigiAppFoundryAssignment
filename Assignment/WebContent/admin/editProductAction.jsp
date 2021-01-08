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
		Statement st = con.createStatement();

		st.executeUpdate("update items set name='" + name + "',category='" + category + "',price='" + price
				+ "',available='" + available + "'where id='" + id + "'");
		if (price.equals("0")) {
			st.executeUpdate("delete from cart where id='" + id + "' and address is NULL");
		}
		response.sendRedirect("allProductEditProduct.jsp?msg=done");
	} catch (Exception e) {
		System.out.println(e);
		response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
	}
%>