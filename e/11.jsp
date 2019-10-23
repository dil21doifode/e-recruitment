<%@ page contentType="text/html; charset=utf-8" language="java"  import="java.sql.*" errorPage="" %>
<%@page import="java.io.*,java.sql.*;" session="true" %>



<%

        String examID = request.getParameter("examid");
        String jobID = session.getAttribute("jobid").toString();

        String studentid=session.getAttribute("s1").toString();
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        String sql = null;
        int[] ar = new int[20];
        int i = 0;
        
            try {

                for (int n = 0; n < ar.length; n++) {
                   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con=DriverManager.getConnection("jdbc:odbc:exam"," "," ");
                    st = con.createStatement();
                    rs = st.executeQuery("select * from Question Where JobID='" + jobID + "' and ExamID='" +
                            examID + "' and QuestionNo="+ ar[n]+"");
                    if (rs.next()) {
        
                        sql="insert into Temp_Data values('" + studentid + "'," + (n +1) + ",'" + rs.getString(4) +
                                "','" + rs.getString(5) +"','" +rs.getString(6) +"','" + rs.getString(7) + "','" +
                                rs.getString(8) + "','" + rs.getString(9) + "')";
                        System.out.println(sql + "<br>");

                        int no=st.executeUpdate(sql);
                        System.out.println(no+"   rows are inserted in temp_data table");
                    }
                }
                session.setAttribute("mark","0");
                session.setAttribute("examid", examID);
                response.sendRedirect("dispqst.jsp?qno=1");
            } 
catch (Exception e) 
{
                out.println("Error: Cannot go forward<br>" + e.toString() );
}

        %>



