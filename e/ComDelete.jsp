<%@ page  import="java.sql.*" %>
<%
            String uname = request.getParameter("id");
            try {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:exam"," "," ");
                Statement st = con.createStatement();
                String sql="delete from com where cusername='"+uname+"'";
                int x=st.executeUpdate(sql);
                if(x>0){
                    response.sendRedirect("AdminCompanyDetails.jsp");
                }else{
                    out.println("Error: cannot delete record"); 
                    
                }
                con.close();
            } catch (Exception ex) {
                out.println(ex.getMessage());
            }
%>