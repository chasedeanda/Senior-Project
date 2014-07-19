<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html>
<head>
    <%--Link JQuery libraries--%>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
    <%--declare favicon image--%>
    <link rel="icon" type="image/png" href="images/faviconlogo.ico" />
    <%--Link all stylesheets--%>
    <link href="css/nav.style.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/camera.css" rel="stylesheet" />
    <%--Link javascript file--%>
    <script src="js/camera.min.js"></script>
    <%--Set page title--%>
    <title>Taylor's Professional Services - Home</title>

    <script>
        $(document).ready(function () {
            <%--Initialize jQuery plugin camera slideshow--%>
            jQuery('#slideshow').camera({
                height: '35%',
                fx: 'scrollLeft',
                thumbnails: 'false',
                pagination: 'false',
                hover: 'false'
            });

            <%--Dynamic nav logic--%>
            $(window).bind('scroll', function () {
                <%--Capture scroll position--%>
                var scrollTop = $(this).scrollTop();
                <%--if the page is scrolldown 70px then add class to #header and #nav elements--%>
                if (scrollTop > 70) {
                    $("#header").addClass('fixedHeader');
                    $("#nav").addClass('fixednav');
                }
                <%--if the page is less than 70px scrolled then remove the fixed classes--%>
                if (scrollTop < 70) {
                    $("#header").removeClass('fixedHeader');
                    $("#nav").removeClass('fixednav');
                }

            });
        });
	</script>
</head>
<body>
    <%--Full page wrapper for header and footer--%>
    <div id="wrapper">
        <div id="header">

            <div class="headerlogo">
                <img src="images/logo.png" alt="Taylor's Professional Services (TPS)" />
            </div>

            <div id="header_container">
                <div id="nav">
                    <ul id="menu">
                        <li><a href="#">Home</a> </li>
                        <li><a href="#">Submit a Request</a> </li>
                        <li><a href="#">My Profile</a></li>
                        <li><a href="#">Find a Candidate</a></li>
                        <li class="menu_right"><a href="#">Login or Sign Up</a></li>
                    </ul>
                </div>
            </div>

        </div>
        <%--Bottom border of nav--%>
        <div id="nav_background"></div>

        <%--contains slideshow--%>
        <div id="slideshow_container">
            <div class="fluid_container">
                <div class="camera_wrap camera_azure_skin" id="slideshow">
                    <div data-src="images/image2.jpg"></div>
                    <div data-src="images/image4.jpg"></div>
                    <div data-src="images/image3.jpg"></div>
                    <div data-src="images/image0.jpg"></div>
                </div>
            </div>
        </div>

        <%--Main body wrapper--%>
        <div id="main_container">
            <%--Main div that will hold information on pages--%>
            <div id="main_content">
                <div class="firstsection section">
                    <h3>-Our Mission-</h3>
                    <p>
                        Finding trained professionals quickly can be a tremendous task.
                        <img src="images/workicon.png" style="float: right; margin-right: 60px;" />
                        We want to help simplify the process of searching for potential employees by connecting you with professionals
                             from around the world who are available to become part of a team or take on an individual project.
                    </p>
                    <p>We believe that we can make the world a smaller place and offer opportunities not only for businesses, but for any professional seeking work. </p>
                </div>
                <div class="section">
                    <span class="sectiontitle">The TPS Promise</span>
                    <img src="images/windowicon.png" style="float: left; margin-right: 10px; margin-bottom: 15px;" />
                    <p>
                        We promise to give you the best opportunity of reaching a qualified professional by giving you the power to specify required skills and traits and select up to three potential candidates.
                            With us, the power of selecting the perfect fit your business is in your hands!
                    </p>
                </div>
                <div class="section">
                    <span class="sectiontitle">Contact Us</span>
                    <img src="images/emailicon.png" style="float: right; margin-right: 60px; margin-top: -16px;" />
                    <p style="margin-bottom: 0px;">Email: support@taylorsprofessionalservices.com</p>
                    <p style="margin: 0;">Phone: (888) 888-8888</p>
                    <p style="margin-top: 0px;">Hours: Mon-Fri 9-5pm CST Sat & Sun: Closed</p>
                </div>
            </div>
        </div>

        <%--Footer divs--%>
        <div id="footer_bg_container">
            <div id="footer_container">
                <span class="copyright">&#169; Taylor's Professional Services 2014 - <a href="#">Home</a><a href="#">Submit a Request</a><a href="#">My Profile</a><a href="#">Find a Candidate</a></span>
            </div>
        </div>
    </div>
</body>
</html>
