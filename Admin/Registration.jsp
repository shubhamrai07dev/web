<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.connectionManager"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Panel</title>

    <!-- Bootstrap Css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Bootstrap Css -->


    <!-- Common Css -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--// Common Css -->


    <!-- Nav Css -->
    <link rel="stylesheet" href="css/style4.css">
    <!--// Nav Css -->


    <!-- Fontawesome Css -->
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <!--// Fontawesome Css -->


</head>

<body>
    <%
        try
        {
         if(session.getAttribute("ad").equals(""))
         {
          out.print("<script>alert('First Login Then Go To Admin Zonne');window.location.href='../../E-Village/login1.html'</script>");
         }
         else
         {
          
         }
         
        }
        catch(Exception e)
        {
         out.print("<script>alert('First Login Then Go To Admin Zonne');window.location.href='../../E-Village/login1.html'</script>");
        }
        %>

    <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h1>
                    <a href="index.jsp">Admin</a>
                </h1>
                <span>M</span>
            </div>
            <div class="profile-bg"></div>
            <ul class="list-unstyled components">
                <li class="active">
                    <a href="index.jsp">
                        <i class="fas fa-th-large"></i> Dashboard
                    </a>
                </li>
                <li>
                    <a href="contactmgmt.jsp">
                        <i class="fas fa-book"></i> Contactmgmt

                    </a>

                </li>

                <li>
                    <a href="reviewmgmt.jsp">
                        <i class="fas fa-comments"></i> Reviewmgmt

                    </a>

                </li>
                 <li>
                     <a href="Registration.jsp">
                        <i class="fas fa-user"></i>Registrationmgmt
                    </a>
                </li>


                <li>
                    <a href="index.jsp">
                        <i class="fas fa-user"></i>Profile
                    </a>
                </li>


                <li>
                    <a href="logout.html">
                        <i class="fas fa-sign-out-alt"></i> Logout
                    </a>
                </li>

            </ul>
        </nav>

        <!-- Page Content Holder -->
        <div id="content">
            <!-- top-bar -->
            <nav class="navbar navbar-default mb-xl-5 mb-4">
                <div class="container-fluid">

                    <div class="navbar-header">
                        <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                            <i class="fas fa-bars"></i>
                        </button>
                    </div>
                    <!-- Search-from -->
                    <form action="#" method="post" class="form-inline mx-auto search-form">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" required="">
                        <button class="btn btn-style my-2 my-sm-0" type="submit">Search</button>
                    </form>
                    <!--// Search-from -->
                    <ul class="top-icons-agileits-w3layouts float-right">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-user"></i>
                            </a>
                            <div class="dropdown-menu drop-3">
                                <div class="profile d-flex mr-o">
                                    <div class="profile-l align-self-center">
                                        <img src="css/me.jpg" class="img-fluid mb-3" alt="Responsive image">
                                    </div>
                                    <div class="profile-r align-self-center">
                                        <h3 class="sub-title-w3-agileits">LovelyChaudhary</h3>
                                        <a href="mailto:info@example.com">33lovely021@gmail.com</a>
                                    </div>
                                </div>
                                <a href="index.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="far fa-user mr-3"></i>My Profile</h4>
                                </a>
                                <a href="reviewmgmt.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="fas fa-link mr-3"></i>Activity</h4>
                                </a>
                                <a href="contactmgmt.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="far fa-envelope mr-3"></i>Messages</h4>
                                </a>
                                <a href="Registration.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="far fa-question-circle mr-3"></i>Faq</h4>
                                </a>
                                <a href="changepass.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="fa fa-key mr-3"></i>Support</h4>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="/E-Village/Admin/Registration.jsp">Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
            <!--// top-bar-->  
   
            <h1 style="font-size:40px;color:teal;text-shadow:3px 3px 3px red;text-align:center">REGISTRATIONMGMT</h1>
            
            <div class="row" style="background-image: url('css/rty.jpg');background-size: 100% 100%;min-height: 300px">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <table border="5" width="100%" style="margin-top: 30px;">
                        <tr style="background: #2e3f61;color:white;font-size:20px;font-weight: bold;text-align: center">
                            <th>Name</th>  
                            <th>Father Name</th>  
                            <th>Gender</th>  
                            <th>Qualification</th> 
                            <th>Mobile</th>  
                            <th>Address</th>  
                            <th>Email</th>  
                            <th>Profile</th> 
                            <th>City</th>  
                            <th>Registration Date</th>  
                            <th>Delete</th>  
                        </tr>
                        <%
                          connectionManager cm=new connectionManager();
                          String command="select*from registration";
                          ResultSet rs=cm.getData(command);
                          while(rs.next())
                          {
                            
                         
                        %>
                        <tr style="background: #a1a1a1;color:#2e3f61;font-size: 18px;text-align:center;">
                            <td><%=rs.getString(1)%></td>  
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getString(7)%></td>
                            <td><img src="../userpic/<%=rs.getString(8)%>" height="100px" width="100px"/></td>
                            <td><%=rs.getString(9)%></td>
                            <td><%=rs.getString(10)%></td>
                           
                            <td><a href="../codes/deletereg.jsp?d=<%=rs.getString(7)%>"><span class="fa fa-trash" 
                                      style="font-size: 25px;color:red;"></span></a></td>
                        </tr>
                        <%}%>
                    </table>
                </div>
                    <div class="col-sm-1"></div>
            </div>
            

            <!-- Copyright -->
            <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
                <p>� 2023 E-Village . All Rights Reserved | Design by
                    <a href="#">Lovely Chaudhary </a>
                </p>
            </div>
            <!--// Copyright -->
        </div>
    </div>



    <!-- Required common Js -->
    <script src='js/jquery-2.2.3.min.js'></script>
    <!-- //Required common Js -->



    <!-- Sidebar-nav Js -->
    <script>
        $(document).ready(function() {
            $('#sidebarCollapse').on('click', function() {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>

    <!-- Js for bootstrap working-->
    <script src="js/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->

</body>

</html>