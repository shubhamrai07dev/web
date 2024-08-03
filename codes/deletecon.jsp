<%@page import="mypack.connectionManager"%>
<%
    String mob=request.getParameter("d");
    String command="delete from contact where email='"+mob+"'";
    connectionManager cm=new connectionManager();
    if(cm.ExecuteInsertUpdateOrDelete(command))
    {
      out.print("<script>alert('This Enquiry data is Deleted from database');window.location.href='../Admin/contactmgmt.jsp'</script>");
    }
    else
    {
      out.print("<script>alert('This Enquiry data is Not Deleted from database');window.location.href='../Admin/contactmgmt.jsp'</script>");
    }
    %>