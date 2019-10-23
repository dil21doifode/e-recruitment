<%@page contentType="text/html" pageEncoding="UTF-8" session="true" import="java.sql.*"%>
<html>
<head>
<style type="text/css">

<!--
body {
	background-color: #669999;
	
}
-->
</style>
</head>
<body>
<p><font color="Black" size="4">
  <%
        String mark = session.getAttribute("mark").toString();
        String uname = session.getAttribute("s1").toString();
     out.println(uname + "  You  have got  "+ mark + " Marks.......... <br>");
int m=Integer.parseInt(mark);
if(m>7)
{
out.println("<marquee><H1>You are shortlisted n we will contact u very soon........</h1></marquee>");
out.println("<center><img src=eh.png ></center>");
}
else
{
out.println("<marquee><H1>You are not shortlisted ,BEST LUCK for next time</H1></marquee>");
out.println("<center><img src=se.jpg ></center>");
}		 
%>

  <br>
  </font></p>
<p>&nbsp;</p>
<p><strong><a href="CandidateHomePage.jsp">Goto Home</a></strong></p>
</body>
</html>
