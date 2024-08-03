<%@page import="mypack.connectionManager" %>
<%
    String name=request.getParameter("name");
    String star=request.getParameter("hdn1");
    String mob=request.getParameter("mob");
    String command="insert into review values('"+name+"','"+star+"','"+mob+"')";
    connectionManager cm=new connectionManager();
    if(cm.ExecuteInsertUpdateOrDelete(command))
    {
     out.print("<script>alert('Thanks For Review');window.location.href='../Review.html'</script>");
    }
    else
    {
     out.print("<script>alert('Your Review is not submit');window.location.href='../Review.html'</script>");
    }
    %>