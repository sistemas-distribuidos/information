<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(request.getParameter("nome")!=null){
	String nome = request.getParameter("nome");
	String valor = request.getParameter("valor");	
	session.setAttribute(nome, valor);
}
%>
<ul>
	<li>Runtime Name: <%=System.getProperty("java.runtime.name") %></li>
	<li>Runtime Version: <%=System.getProperty("java.runtime.version") %></li>
	<li>OS Name: <%=System.getProperty("os.name") %></li>
	<li>OS Version: <%=System.getProperty("os.version") %></li>
	<li>OS Arch: <%=System.getProperty("os.arch") %></li>
	<li>JBoss Home Dir: <%=System.getProperty("jboss.home.dir") %></li>
	<li>JBoss Home Name: <%=System.getProperty("jboss.home.name") %></li>
	<li>JBoss Node Name: <%=System.getProperty("jboss.node.name") %></li>
	<li>JBoss Node Name: <%=System.getProperty("jboss.server.name") %></li>
</ul>
<h1>Session Vars</h1>
<%
Enumeration<String> keys = session.getAttributeNames();
while (keys.hasMoreElements())
{
  String key = (String)keys.nextElement();
  out.println("<b>Nome:<b/> " + key + " - <b>Valor:</b> " + session.getAttribute(key) + "<br>");
}
%>

<h1> Add Session Var:</h1>
<form action="#" method="POST">
	Nome: <input type="text" name="nome"/><br>
	Valor: <input type="text" name="valor"/><br>
	<input type="submit" value="Enviar"/>
</form>
</body>
</html>