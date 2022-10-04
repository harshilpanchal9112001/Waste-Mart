<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.util.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Waste-Mart | Service</title>
<link rel="icon" href="waste-mart.ico" type="iamge/x-icon">
</head>
<body>
<!-- inner banner -->
<%@include file="header2.jsp" %>
<section class="w3l-inner-banner-main">
    <div class="about-inner" style="background-size:auto;">
        <div class="wrapper">
            
            <ul class="breadcrumbs-custom-path">
                <h3>Services</h3>
                <li><a href="#">Home <span class="fa fa-angle-right" aria-hidden="true"></span></a></li>
                <li class="active">Services</li>
            </ul>
        </div>
    </div>
</section>
<!-- //covers -->

<section class="w3l-services-1">
	<div class="services1">
		<div class="wrapper">
			<div class="services-title">
				<h3>What Services We Provide</h3>
			</div>
			<div class="services1-content">
			<%
				Connection cn=new DBUtil().getConnection();
				String qry="select * from services";
				PreparedStatement st=cn.prepareStatement(qry);
				ResultSet rs=st.executeQuery();
				while(rs.next())
				{
				
			%>
				<div class="column ser-1">
					<div class="service-info">
								<span class=""><img src="services/<%=rs.getString(4) %>" style="height:100px;width:100px;" /></span>
							<h4><a href="customer-service.jsp"><%=rs.getString(2) %></a></h4>
							<p><%=rs.getString(3) %></p>
						</div>
					
				</div>
			<%
				}
				cn.close();
			%>
				</div>
		</div>
	</div>
</section>
<!-- //services 1 -->
<%@include file="header2.jsp" %>
<!-- specifications -->
<section class="w3l-specifications-9">
    <div class="main-w3">
        <div class="wrapper">
            <div class="main-cont-wthree-fea">
                <div class="grids-speci">
                        <span class="fa fa-anchor"></span>
                    <h3 class="title-spe">1202</h3>
                    <p> Cultivated Yards</p>
                </div>
                <div class="grids-speci midd-eff-spe">
                        <span class="fa fa-smile-o"></span>
                    <h3 class="title-spe">1200</h3>
                    <p> Happy Customers</p>
                </div>
                <div class="grids-speci las-but">
                        <span class="fa fa-trophy"></span>
                    <h3 class="title-spe">256</h3>
                    <p>Company Awards</p>
                </div>
                <div class="grids-speci las-t">
                        <span class="fa fa-podcast"></span>
                        <h3 class="title-spe">16</h3>
                        <p>Years Of Experience</p>
                    </div>
            </div>
            
        </div>
    </div>
    <!-- //specifications -->
    </section>
    
    <section class="w3l-content-16">
       <!-- /w3l-content-16 -->
         <div class="w3l-content-16-main">
		 	<div class="wrapper">
			  <div class="grid">
				   <div class="column">
					   <img src="assets/images/step-1.svg" style="height:200px;width:200px;" />
					  <h3><a href="#">1.</a></h3>
					 <h3><a href="#">Select Scrap Item for Selling</a><h3>
					</div>
					<div class="column">
					 <img src="assets/images/step-2.svg" style="height:200px;width:200px;"/>
					  <h3><a href="#">2.</a></h3>
				     <h3><a href="single.html">Choose a pickup date for scrap pickup</a><h3>
					</div>
					<div class="column">
					  <img src="assets/images/step-3.svg" style="height:200px;width:200px;" />
					   <h3><a href="#">3.</a></h3>
				     <h2>Pickup boy will arrive at your home</h2>
					</div>
					
					
					
			  </div>
           </div>
        </div>
		</section>
      <!-- //w3l-content-16 -->
<%@include file="footer.jsp" %>
</body>
</html>