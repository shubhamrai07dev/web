<%@page import="mypack.connectionManager" %>
<%
    String name,mob,email,msg;
    name=request.getParameter("name");
    mob=request.getParameter("mob");
    email=request.getParameter("email");
    msg=request.getParameter("msg");
    String command="insert into contact values('"+name+"','"+mob+"','"+email+"','"+msg+"')";
    connectionManager cm=new connectionManager();
//    out.print(command);
    if(cm.ExecuteInsertUpdateOrDelete(command))
    {
       out.print("<script>alert('Thanks for contact! As soon as We Contact');window.location.href='../contact.html'</script>");
       
    }
    else
    {
       out.print("<script>alert('Sorry Your Contact is not save');window.location.href='../contact.html'</script>");
       
    }
    %>