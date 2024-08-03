<%@page import="mypack.connectionManager"%>
<%
    String oldpass=request.getParameter("oldpass");
    String newpass=request.getParameter("newpass");
    String cpass=request.getParameter("cpass");
    connectionManager cm=new connectionManager();
    if(newpass.equals(cpass))
    {
      String email=session.getAttribute("ad").toString();
      String command="update login set pass='"+newpass+"' where email='"+email+"' and pass='"+oldpass+"'";
      boolean x=cm.ExecuteInsertUpdateOrDelete(command);
      if(x)
      {
        out.print("<script>alert('Your Password is Change Successfully');window.location.href='../login1.html'</script>");
      }
      else
      {
         out.print("<script>alert('Your Password is Not Change');window.location.href='../Admin/changepass.jsp'</script>");
      }
      
    }
    else
    {
       out.print("<script>alert('Plz Confirm Password');window.location.href='../login1.html'</script>");
    }
    %>