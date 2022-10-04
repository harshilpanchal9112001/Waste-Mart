<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title> Admin | Item Editor </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.html">
        <!-- Place favicon.ico in the root directory -->
        <link rel="stylesheet" href="css/vendor.css">
        <!-- Theme initialization -->
        <script>
            var themeSettings = (localStorage.getItem('themeSettings')) ? JSON.parse(localStorage.getItem('themeSettings')) :
            {};
            var themeName = themeSettings.themeName || '';
            if (themeName)
            {
                document.write('<link rel="stylesheet" id="theme-style" href="css/app-' + themeName + '.css">');
            }
            else
            {
                document.write('<link rel="stylesheet" id="theme-style" href="css/app.css">');
            }
        </script>
</head>
<body>
<div class="main-wrapper">
            <div class="app" id="app">
            <!-- Header -->
			<%@include file="header.jsp" %>
			<!-- Sidebar -->
			
			<aside class="sidebar">
                    <div class="sidebar-container">
                        <div class="sidebar-header">
                            <div class="brand">
                                <div class="logo">
                                    <span class="l l1"></span>
                                    <span class="l l2"></span>
                                    <span class="l l3"></span>
                                    <span class="l l4"></span>
                                    <span class="l l5"></span>
                                </div> Modular Admin
                            </div>
                        </div>
                        <nav class="menu">
                            <ul class="sidebar-menu metismenu" id="sidebar-menu">
                                <li>
                                    <a href="dashboard.jsp">
                                        <i class="fa fa-home"></i> Dashboard </a>
                                </li>
                                <li class="active open">
                                    <a href="#">
                                        <i class="fa fa-th-large"></i> Items Manager <i class="fa arrow"></i>
                                    </a>
                                    <ul class="sidebar-nav">
                                        <li>
                                            <a href="items-list.jsp"> Items List </a>
                                        </li>
                                        <li class="active">
                                            <a href="item-editor.jsp"> Item Editor </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-area-chart"></i> Users <i class="fa arrow"></i>
                                    </a>
                                    <ul class="sidebar-nav">
                                        <li>
                                            <a href="customer.jsp"> Customer </a>
                                        </li>
                                        <li>
                                            <a href="company.jsp"> Company </a>
                                        </li>
                                        <li>
                                            <a href="zoner.jsp"> Zoner </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-table"></i> Request <i class="fa arrow"></i>
                                    </a>
                                    <ul class="sidebar-nav">
                                        <li>
                                            <a href="static-tables.html"> Customer</a>
                                        </li>
                                        <li>
                                            <a href="responsive-tables.html"> Company </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="forms.html">
                                        <i class="fa fa-pencil-square-o"></i> Report </a>
                                </li>
                                <li>
                                    <a href="forms.html">
                                        <i class="fa fa-pencil-square-o"></i> Payment </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-desktop"></i> UI Elements <i class="fa arrow"></i>
                                    </a>
                                    <ul class="sidebar-nav">
                                        <li>
                                            <a href="buttons.html"> Buttons </a>
                                        </li>
                                        <li>
                                            <a href="cards.html"> Cards </a>
                                        </li>
                                        <li>
                                            <a href="typography.html"> Typography </a>
                                        </li>
                                        <li>
                                            <a href="icons.html"> Icons </a>
                                        </li>
                                        <li>
                                            <a href="grid.html"> Grid </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-file-text-o"></i> Pages <i class="fa arrow"></i>
                                    </a>
                                    <ul class="sidebar-nav">
                                        <li>
                                            <a href="login.html"> Login </a>
                                        </li>
                                        <li>
                                            <a href="signup.html"> Sign Up </a>
                                        </li>
                                        <li>
                                            <a href="reset.html"> Reset </a>
                                        </li>
                                        <li>
                                            <a href="error-404.html"> Error 404 App </a>
                                        </li>
                                        <li>
                                            <a href="error-404-alt.html"> Error 404 Global </a>
                                        </li>
                                        <li>
                                            <a href="error-500.html"> Error 500 App </a>
                                        </li>
                                        <li>
                                            <a href="error-500-alt.html"> Error 500 Global </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-sitemap"></i> Menu Levels <i class="fa arrow"></i>
                                    </a>
                                    <ul class="sidebar-nav">
                                        <li>
                                            <a href="#"> Second Level Item <i class="fa arrow"></i>
                                            </a>
                                            <ul class="sidebar-nav">
                                                <li>
                                                    <a href="#"> Third Level Item </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Third Level Item </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#"> Second Level Item </a>
                                        </li>
                                        <li>
                                            <a href="#"> Second Level Item <i class="fa arrow"></i>
                                            </a>
                                            <ul class="sidebar-nav">
                                                <li>
                                                    <a href="#"> Third Level Item </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Third Level Item </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Third Level Item <i class="fa arrow"></i>
                                                    </a>
                                                    <ul class="sidebar-nav">
                                                        <li>
                                                            <a href="#"> Fourth Level Item </a>
                                                        </li>
                                                        <li>
                                                            <a href="#"> Fourth Level Item </a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="screenful.html">
                                        <i class="fa fa-bar-chart"></i> Agile Metrics <span class="label label-screenful">by Screenful</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://github.com/modularcode/modular-admin-html">
                                        <i class="fa fa-github-alt"></i> Theme Docs </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <footer class="sidebar-footer">
                        <ul class="sidebar-menu metismenu" id="customize-menu">
                            <li>                            
                                <a href="#">
                                    <i class="fa fa-cog"></i> Log Out </a>
                            </li>
                        </ul>
                    </footer>
                </aside>
			
			<!-- Content -->
			<div class="sidebar-overlay" id="sidebar-overlay"></div>
			<div class="sidebar-mobile-menu-handle" id="sidebar-mobile-menu-handle"></div>
			<div class="mobile-menu-handle"></div>
			<article class="content item-editor-page">
                    <div class="title-block">
                        <h3 class="title"> Add new item <span class="sparkline bar" data-type="bar"></span>
                        </h3>
                    </div>
                    <form name="item">
                        <div class="card card-block">
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label text-xs-right"> Name: </label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control boxed" placeholder="">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label text-xs-right"> Content: </label>
                                <div class="col-sm-10">
                                    <div class="wyswyg">
                                        <div class="toolbar">
                                            <select class="ql-size">
                                                <option value="small"></option>
                                                <option selected></option>
                                                <option value="large"></option>
                                                <option value="huge"></option>
                                            </select>
                                            <button class="ql-bold"></button>
                                            <button class="ql-italic"></button>
                                            <button class="ql-underline"></button>
                                            <button class="ql-strike"></button>
                                            <select title="Text Color" class="ql-color">
                                                <option value="rgb(0, 0, 0)" label="rgb(0, 0, 0)" selected></option>
                                                <option value="rgb(230, 0, 0)" label="rgb(230, 0, 0)"></option>
                                                <option value="rgb(255, 153, 0)" label="rgb(255, 153, 0)"></option>
                                                <option value="rgb(255, 255, 0)" label="rgb(255, 255, 0)"></option>
                                                <option value="rgb(0, 138, 0)" label="rgb(0, 138, 0)"></option>
                                                <option value="rgb(0, 102, 204)" label="rgb(0, 102, 204)"></option>
                                                <option value="rgb(153, 51, 255)" label="rgb(153, 51, 255)"></option>
                                                <option value="rgb(255, 255, 255)" label="rgb(255, 255, 255)"></option>
                                                <option value="rgb(250, 204, 204)" label="rgb(250, 204, 204)"></option>
                                                <option value="rgb(255, 235, 204)" label="rgb(255, 235, 204)"></option>
                                                <option value="rgb(255, 255, 204)" label="rgb(255, 255, 204)"></option>
                                                <option value="rgb(204, 232, 204)" label="rgb(204, 232, 204)"></option>
                                                <option value="rgb(204, 224, 245)" label="rgb(204, 224, 245)"></option>
                                                <option value="rgb(235, 214, 255)" label="rgb(235, 214, 255)"></option>
                                                <option value="rgb(187, 187, 187)" label="rgb(187, 187, 187)"></option>
                                                <option value="rgb(240, 102, 102)" label="rgb(240, 102, 102)"></option>
                                                <option value="rgb(255, 194, 102)" label="rgb(255, 194, 102)"></option>
                                                <option value="rgb(255, 255, 102)" label="rgb(255, 255, 102)"></option>
                                                <option value="rgb(102, 185, 102)" label="rgb(102, 185, 102)"></option>
                                                <option value="rgb(102, 163, 224)" label="rgb(102, 163, 224)"></option>
                                                <option value="rgb(194, 133, 255)" label="rgb(194, 133, 255)"></option>
                                                <option value="rgb(136, 136, 136)" label="rgb(136, 136, 136)"></option>
                                                <option value="rgb(161, 0, 0)" label="rgb(161, 0, 0)"></option>
                                                <option value="rgb(178, 107, 0)" label="rgb(178, 107, 0)"></option>
                                                <option value="rgb(178, 178, 0)" label="rgb(178, 178, 0)"></option>
                                                <option value="rgb(0, 97, 0)" label="rgb(0, 97, 0)"></option>
                                                <option value="rgb(0, 71, 178)" label="rgb(0, 71, 178)"></option>
                                                <option value="rgb(107, 36, 178)" label="rgb(107, 36, 178)"></option>
                                                <option value="rgb(68, 68, 68)" label="rgb(68, 68, 68)"></option>
                                                <option value="rgb(92, 0, 0)" label="rgb(92, 0, 0)"></option>
                                                <option value="rgb(102, 61, 0)" label="rgb(102, 61, 0)"></option>
                                                <option value="rgb(102, 102, 0)" label="rgb(102, 102, 0)"></option>
                                                <option value="rgb(0, 55, 0)" label="rgb(0, 55, 0)"></option>
                                                <option value="rgb(0, 41, 102)" label="rgb(0, 41, 102)"></option>
                                                <option value="rgb(61, 20, 102)" label="rgb(61, 20, 102)"></option>
                                            </select>
                                            <select title="Background Color" class="ql-background">
                                                <option value="rgb(0, 0, 0)" label="rgb(0, 0, 0)"></option>
                                                <option value="rgb(230, 0, 0)" label="rgb(230, 0, 0)"></option>
                                                <option value="rgb(255, 153, 0)" label="rgb(255, 153, 0)"></option>
                                                <option value="rgb(255, 255, 0)" label="rgb(255, 255, 0)"></option>
                                                <option value="rgb(0, 138, 0)" label="rgb(0, 138, 0)"></option>
                                                <option value="rgb(0, 102, 204)" label="rgb(0, 102, 204)"></option>
                                                <option value="rgb(153, 51, 255)" label="rgb(153, 51, 255)"></option>
                                                <option value="rgb(255, 255, 255)" label="rgb(255, 255, 255)" selected></option>
                                                <option value="rgb(250, 204, 204)" label="rgb(250, 204, 204)"></option>
                                                <option value="rgb(255, 235, 204)" label="rgb(255, 235, 204)"></option>
                                                <option value="rgb(255, 255, 204)" label="rgb(255, 255, 204)"></option>
                                                <option value="rgb(204, 232, 204)" label="rgb(204, 232, 204)"></option>
                                                <option value="rgb(204, 224, 245)" label="rgb(204, 224, 245)"></option>
                                                <option value="rgb(235, 214, 255)" label="rgb(235, 214, 255)"></option>
                                                <option value="rgb(187, 187, 187)" label="rgb(187, 187, 187)"></option>
                                                <option value="rgb(240, 102, 102)" label="rgb(240, 102, 102)"></option>
                                                <option value="rgb(255, 194, 102)" label="rgb(255, 194, 102)"></option>
                                                <option value="rgb(255, 255, 102)" label="rgb(255, 255, 102)"></option>
                                                <option value="rgb(102, 185, 102)" label="rgb(102, 185, 102)"></option>
                                                <option value="rgb(102, 163, 224)" label="rgb(102, 163, 224)"></option>
                                                <option value="rgb(194, 133, 255)" label="rgb(194, 133, 255)"></option>
                                                <option value="rgb(136, 136, 136)" label="rgb(136, 136, 136)"></option>
                                                <option value="rgb(161, 0, 0)" label="rgb(161, 0, 0)"></option>
                                                <option value="rgb(178, 107, 0)" label="rgb(178, 107, 0)"></option>
                                                <option value="rgb(178, 178, 0)" label="rgb(178, 178, 0)"></option>
                                                <option value="rgb(0, 97, 0)" label="rgb(0, 97, 0)"></option>
                                                <option value="rgb(0, 71, 178)" label="rgb(0, 71, 178)"></option>
                                                <option value="rgb(107, 36, 178)" label="rgb(107, 36, 178)"></option>
                                                <option value="rgb(68, 68, 68)" label="rgb(68, 68, 68)"></option>
                                                <option value="rgb(92, 0, 0)" label="rgb(92, 0, 0)"></option>
                                                <option value="rgb(102, 61, 0)" label="rgb(102, 61, 0)"></option>
                                                <option value="rgb(102, 102, 0)" label="rgb(102, 102, 0)"></option>
                                                <option value="rgb(0, 55, 0)" label="rgb(0, 55, 0)"></option>
                                                <option value="rgb(0, 41, 102)" label="rgb(0, 41, 102)"></option>
                                                <option value="rgb(61, 20, 102)" label="rgb(61, 20, 102)"></option>
                                            </select>
                                            <button class="ql-list" value="ordered"></button>
                                            <button class="ql-list" value="bullet"></button>
                                            <select title="Text Alignment" class="ql-align">
                                                <option selected></option>
                                                <option value="center" label="Center"></option>
                                                <option value="right" label="Right"></option>
                                                <option value="justify" label="Justify"></option>
                                            </select>
                                            <button class="ql-link"></button>
                                            <button style="width: auto;" type="button" title="Image" class="btn btn-secondary btn-sm" data-toggle="modal" data-target="#modal-media">
                                                <i class="fa fa-image"></i> Media </button>
                                        </div>
                                        <div class="editor"> Hello World </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label text-xs-right"> Category: </label>
                                <div class="col-sm-10">
                                    <select class="c-select form-control boxed">
                                        <option selected>Select Category</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label text-xs-right"> Images: </label>
                                <div class="col-sm-10">
                                    <div class="images-container">
                                        <div class="image-container">
                                            <div class="controls">
                                                <a href="#" class="control-btn move">
                                                    <i class="fa fa-arrows"></i>
                                                </a>
                                                <!--
								--><a href="#" class="control-btn star">
                                                    <i class="fa"></i>
                                                </a>
                                                <!--
								--><a href="#" class="control-btn remove" data-toggle="modal" data-target="#confirm-modal">
                                                    <i class="fa fa-trash-o"></i>
                                                </a>
                                            </div>
                                            <div class="image" style="background-image:url('../../s3.amazonaws.com/uifaces/faces/twitter/brad_frost/128.jpg')"></div>
                                        </div>
                                        <div class="image-container">
                                            <div class="controls">
                                                <a href="#" class="control-btn move">
                                                    <i class="fa fa-arrows"></i>
                                                </a>
                                                <!--
								--><a href="#" class="control-btn star">
                                                    <i class="fa"></i>
                                                </a>
                                                <!--
								--><a href="#" class="control-btn remove" data-toggle="modal" data-target="#confirm-modal">
                                                    <i class="fa fa-trash-o"></i>
                                                </a>
                                            </div>
                                            <div class="image" style="background-image:url('../../s3.amazonaws.com/uifaces/faces/twitter/_everaldo/128.jpg')"></div>
                                        </div>
                                        <div class="image-container">
                                            <div class="controls">
                                                <a href="#" class="control-btn move">
                                                    <i class="fa fa-arrows"></i>
                                                </a>
                                                <!--
								--><a href="#" class="control-btn star">
                                                    <i class="fa"></i>
                                                </a>
                                                <!--
								--><a href="#" class="control-btn remove" data-toggle="modal" data-target="#confirm-modal">
                                                    <i class="fa fa-trash-o"></i>
                                                </a>
                                            </div>
                                            <div class="image" style="background-image:url('../../s3.amazonaws.com/uifaces/faces/twitter/eduardo_olv/128.jpg')"></div>
                                        </div>
                                        <a href="#" class="add-image" data-toggle="modal" data-target="#modal-media">
                                            <div class="image-container new">
                                                <div class="image">
                                                    <i class="fa fa-plus"></i>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-10 col-sm-offset-2">
                                    <button type="submit" class="btn btn-primary"> Submit </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </article>
                <!-- Footer -->        
				<%@ include file="footer.jsp" %>
           </div>
     </div>
           <!-- Reference block for JS -->
        <div class="ref" id="ref">
            <div class="color-primary"></div>
            <div class="chart">
                <div class="color-primary"></div>
                <div class="color-secondary"></div>
            </div>
        </div>
        
        <script>
            (function(i, s, o, g, r, a, m)
            {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function()
                {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '../../www.google-analytics.com/analytics.js', 'ga');
            ga('create', 'UA-80463319-4', 'auto');
            ga('send', 'pageview');
        </script>
        <script src="js/vendor.js"></script>
        <script src="js/app.js"></script>
</body>
</html>