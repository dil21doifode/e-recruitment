<%-- 
    Document   : JobseekerHomePage
    
--%>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%String examID = session.getAttribute("examid").toString();
  String jobID = session.getAttribute("jobid").toString();
System.out.println("exam id is "+examID);
System.out.println("job id is "+jobID);
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>www.ecareer.in</title>
    </head>
    <body>
        <table width="104%" height="628" border="1" bgcolor="wheat">
            <tr>
                <td height="23" colspan="2"><jsp:include page="CandidateHeader.jsp"/></td>
            </tr>
            <tr>
                <td width="1"  height="597"><jsp:include page="Candidatemenu.jsp"/></td>
                <td width="738" valign="top">

                    <%
        String uname = (String)session.getAttribute("s1");
        System.out.println(uname);
        String sql = "",sql1="";
        Connection con;
        Statement st,st1;
        ResultSet rs;
        // out.println(uname);
        try {
            sql = "select * from Result where studentID='" + uname + "' and jobid='"+jobID+"'";
			

            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         con=DriverManager.getConnection("jdbc:odbc:exam"," "," ");
            st = con.createStatement();
            //rs1=st.executeQuery(sql1);
            rs = st.executeQuery(sql);
            
                    %>

                    <table width="546" border="1" align="center">
                        <tr bgcolor="#CCCCCC">
                            <td bgcolor="#CCCCCC"><div align="center"><strong>Exam ID</strong></div></td>
                            <td bgcolor="#CCCCCC"><div align="center"><strong>Job ID</strong></div></td>
                            <td bgcolor="#CCCCCC"><div align="center"><strong>Mark</strong></div></td>
                        </tr>
                        <%
                        while (rs.next()) {
                            out.println("<tr>");
                            out.println("<td>" + rs.getString(2) + "</td>");
                            out.println("<td>" + rs.getString(3) + "</td>");
                            out.println("<td>" + rs.getString(4) + "</td>");
							
                            out.println("</tr>");
                        }
}
catch(Exception e)
{
out.println(e);
}
%>

                    </table>
                  
                </td>
            </tr>
        </table>
    </body>
</html>
