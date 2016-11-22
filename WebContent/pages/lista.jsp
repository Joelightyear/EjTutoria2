<%@page import="java.sql.ResultSet"%>
<div class="col-md-4"></div>
<div class="col-md-4 text-center">
<% ResultSet rs = (ResultSet) request.getAttribute("clientes");
	while(rs.next())
	{
	%>
	<h3><%= rs.getString(2) %></h3>
	<p><%= rs.getString(3) %>  <%= rs.getString(4) %> edad (<%= rs.getString("edad") %>)</p>
	<a href="mailto:<%= rs.getString(6) %>"><%= rs.getString(6) %></a>
	
	<%	
	}
%>
</div>
<div class="col-md-4"></div>