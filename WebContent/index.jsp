<jsp:include page="pages/header.jsp"/>

<%
String pag="";
if(request.getAttribute("page")!=null)
{
	pag= request.getAttribute("page").toString();
}
switch (pag) {
case "lista":
	pag= new String("pages/lista.jsp");
break;
default:
	pag= new String("pages/home.jsp");
	break;
}
%>
<jsp:include page="<%= pag %>" />
<jsp:include page="pages/footer.jsp"/>