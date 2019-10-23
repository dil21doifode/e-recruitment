<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>www.ecareer.in</title> <head>

<body bgcolor="violet">

	<%! String qstn = "", ch1 = "", ch2 = "", ch3 = "", ch4 = "", ans = "";
	
		%>
		<%

String examid=(String)session.getAttribute("examid");
		System.out.println("exam id is"+examid); %>
        <%
        Connection con;
        Statement st;
        ResultSet rs;
        String sql;
        int qno = Integer.parseInt(request.getParameter("qno"));
        String studentid = session.getAttribute("s1").toString();
        

        try {
			
            sql = "select * from Question where QuestionNo="+qno+"";
			
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         con=DriverManager.getConnection("jdbc:odbc:exam"," "," ");

			st = con.createStatement();
            rs = st.executeQuery(sql);
			
			
		 while(rs.next()) {
		                qno=rs.getInt(3);


                             qstn = rs.getString(4);
				ch1 = rs.getString(5);
				ch2 = rs.getString(6);
				ch3 = rs.getString(7);
				ch4 = rs.getString(8);
				ans = rs.getString(9);
                                 }
				
   //out.println(session.getAttribute("mark"));

System.out.println("the question is:"+qstn);
%>
<form action="calcmark.jsp" method="post" name="forma">


            <table width="100%" height="100%" border="1" bgcolor="wheat">
                <tr height="100">
                    <td width="148" ><strong>Question<%=qno%>  of 10
                      
                      </strong>
                      <input type="hidden" name="qno" value="<%=qno%>"></td>
                    <td><strong><%=qstn%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>1</strong></div></td>
                    <td width="460" >
                      <strong>
                      <input name="ch" type="radio" value="<%=ch1%>">
                      <%=ch1%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>2</strong></div></td>
                    <td>
                      <strong>
                      <input name="ch" type="radio" value="<%=ch2%>">
                      <%=ch2%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>3</strong></div></td>
                    <td>
                      <strong>
                      <input name="ch" type="radio" value="<%=ch3%>">
                      <%=ch3%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>4</strong></div></td>
                    <td>
                      <strong>
                      <input name="ch" type="radio" value="<%=ch4%>">
                      <%=ch4%></strong></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="ans" value="<%=ans%>"></td>
                    
					<%
						if (qno < 10) {

						%>
                    <td><input type="submit" name="ok" value="Next Question"></td>
					
                    <%} else if(qno <= 10){
						
                 %>
				
                    <td width="199"><input type="submit" name="ok" value="Finish"></td>
					
            
               <%             }
                    %>
					</tr>
					
					 </table>
        </form>

		<%
					
			
			} catch (Exception ex) {
           // out.println(ex.toString());
		   ex.printStackTrace();
        }				
               
		 %>

   		
	
        
</body>
</html> 
			

            