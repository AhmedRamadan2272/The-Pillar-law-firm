<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectUnderConstruction_En.aspx.cs" Inherits="Amr_Groups.ProjectUnderConstruction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
 <meta http-equiv="Content-Language" content="en-us" />

<meta name="copyright" content="amr-groups.com" />
<meta name="country" content="Egypt" />
<meta name="coverage" content="Worldwide" />
<meta name="revisit" content="14 days" />
<meta name="category" content="Constructions : Real estate construction company" /> 
 <!--<base href="http://www.amr-Groups/index-En.aspx.com/" />-->
 
  <meta name="msvalidate.01" content="759FB68CE6589DFC93759D1994F05314" />
   <meta name="keywords" content="real estate in Egypt,Real estate construction
, house for sale in Egypt, apartment in Maadi, apartment in Kattameya, apartment in Nasr City, apartment in 6th of october,apartment in  of El Obour City,apartment in alshorok City, real estate in Maadi, real estate in Kattameya, real estate in Nasr City, real estate in 6th of october, memaar , Amr Groups, project"/>  
  
      <meta name="description" content="Egyptian Construction  Company located in Cairo. We Specialize in real Estate Marketing , Real estate construction
,Sale Building,Villas and Apartments .


  <meta name="generator" content="" /> 
     
    <title>Amr Groups for real estate&Real estate construction
</title>
    
    
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/templatemo_style.css" rel="stylesheet">
   	    <link rel="stylesheet" href="css/templatemo_misc.css">

        <link href="css/circle.css" rel="stylesheet">
        <link href="css/jquery.bxslider.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/nivo-slider.css">
        <link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,600' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/JavaScript" src="js/slimbox2.js"></script> 

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
	    <script type="text/javascript" src="js/jquery.min.js"></script>
	    <script type="text/javascript" src="js/ddsmoothmenu.js"></script>




    <script type="text/javascript">

        ddsmoothmenu.init({
            mainmenuid: "templatemo_flicker", //menu DIV id
            orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
            classname: 'ddsmoothmenu', //class added to menu's outer DIV
            //customtheme: ["#1c5a80", "#18374a"],
            contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
        })

    </script>

  
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <header>
    <!-- start menu -->
    <div id="templatemo_home">
    	<div class="templatemo_top">
      <div class="container templatemo_container">
        <div class="row">
          <div class="col-sm-3 col-md-3">
            <div class="logo">
                <a href="index.html">
				<img src="images/logo.png" alt="logo" style="width: 170px; height: 80px"></a>
            </div>
          </div>
          <!-----
          -->
          <style>
.dropbtn {
 
    color: white;
 
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;

}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
 
}

.dropdown-content a {
    color: black;
 
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>
          <!---
          -->
          
          
          <div class="col-sm-9 col-md-9 templatemo_col9">
          	<div id="top-menu">
            <nav class="mainMenu">
              <ul class="nav">
                
 

 				              <li><a class="menu" href="index-en.aspx"> Back To Home </a></li>

              </ul>
            </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
          </header>
  
 
    <!--&#1575;&#1604;&#1589;&#1600;&#1600;&#1600;&#1600;&#1600;&#1608;&#1585; Start-->
       <div class="templatemo_portfolio" id="templatemo_portfolio" style="background-color:#e9e9e9">
        	<h2>portfolio</h2>
  
 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AmrGroupsConnectionString %>" SelectCommand="SELECT IDPIC, [Name-En], Destionation, UID FROM tblMasterPic WHERE ([Case] = @Case )">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="Case" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
    
             <div class="container">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                     
                   
                    <ItemTemplate>
                

              <div class="col-xs-6 col-sm-6 col-md-4 templatemo_col12">              
              	<div class="portfolio-item">
							<div class="portfolio-thumb" style="left: 0px; top: 0px ;">
								<img src="<%#Eval("Destionation") %>" alt="<%#Eval("Name-En") %>">
								<div class="overlay-p">
									<a href="<%#Eval("Destionation") %>" data-rel="lightbox[portfolio]">
                                    	<ul>
                                        	<li>zoom</li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-circle"></li>
                                            <li class="fa fa-circle fsmall"></li>
                                            <li class="fa fa-search fa-2x"></li>
                                        </ul>
									</a>
								</div>
							</div> <!-- /.portfolio-thumb -->
							
							<div class="text-center">
								<br>-  <%#Eval("Name-En") %> <br>

							</div>
						 
							<a class="btn btn-large btn-primary"  target="_blank" href="SubPic_En.aspx?ID=<%#Eval("UID") %>">
							&#1593;&#1585;&#1590; &#1575;&#1604;&#1605;&#1600;&#1600;&#1586;&#1610;&#1583;</a></div>
      
              </div>
                         
 
                        </ItemTemplate>
               </asp:Repeater>
              
             </div>
               <div class="clear"></div>
       
              
              
              
              
                          

            

 
</div>
   <!--&#1575;&#1604;&#1589;&#1600;&#1600;&#1600;&#1600;&#1600;&#1608;&#1585; End-->
    <div class="clear"></div>
    <!--Our Blog Start-->
    <!--Our Blog End-->
	<!--Our Partner Start-->
   
            
   
        </div>
        
	</div>
     <div class="clear"></div>
    
    
<!--Footer Start-->
    <div class="templatemo_footer">
    	<div class="container">
       	  <div class="col-xs-6 col-sm-6 col-md-4 templatemo_col12">
            	<h2>About </h2>
                <p>Nobility of the past and professionality of the future ..
via experience in the field of construction more than ten years. Company had been mad alot of projects at Elshorak ,Elabor City , Naser City with variance in apartments start with 150m ,215m and Duplex until 600m with Gardens

.
				
  </p>
          </div>
              
            <div class="col-xs-6 col-sm-6 col-md-4 templatemo_col12">
            	<h2>Services</h2>
                <ul>
                  <li>Construction Real Estate
</li>
					<li>Real Estate Marketing
</li>
                </ul>
                <div class="clear"></div>
                <div class="templatemo_morelink"></div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-4 templatemo_col12">
            <h2>Contact</h2>
            	<span class="left col-xs-1 fa fa-map-marker"></span>
                <span class="right col-xs-11">58 st Ibn ElNafis from Abo Daoad El Zahery </span>
                <div class="clear height10"><br></div>
                <span class="left col-xs-1 fa fa-phone" style="left: 0px; top: -4px"></span>
                <span class="right col-xs-11" style="left: 1px; top: -10px">
				01211195533<br>
                     02 26703854
                 </span>
                <span class="left col-xs-1 fa fa-envelope" style="left: 1px; top: 8px"></span>
                <span class="right col-xs-11">mail :
			<a href="mailto:info@Amr-Groups.com">info@Amr-Groups.com</a><br>
 				

            </div>
        </div>
    </div>
   <!--Footer End-->
	<!-- Bottom Start -->
    <div class="templatemo_bottom" style="height: 58px">
    	<div class="container">
        	<div class="row">
            	<div class="left">Copyright © 2017 <a href="index-En.aspx">ِAmr Groups Co.</a></div>
                <div class="right">
                    <a href="https://www.youtube.com/channel/UCFArfyqDnF0cFLRnI4_b5Hg"><div class="fa fa-youtube soc"></div></a>
                    <a href="https://www.facebook.com/%D8%B9%D9%85%D8%B1%D9%88-%D8%AC%D8%B1%D9%88%D8%A8-%D9%84%D9%84%D9%85%D9%82%D8%A7%D9%88%D9%84%D8%A7%D8%AA-%D9%88-%D8%A7%D9%84%D8%A7%D8%B3%D8%AA%D8%AB%D9%85%D8%A7%D8%B1-%D8%A7%D9%84%D8%B9%D9%82%D8%A7%D8%B1%D9%89-578750202240524/"><div class="fa fa-facebook soc"></div></a>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- <script src="https://code.jquery.com/jquery.js"></script> -->
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cycle2.min.js"></script>
    <script src="js/jquery.cycle2.carousel.min.js"></script>
    <script src="js/jquery.nivo.slider.pack.js"></script>
    <script>$.fn.cycle.defaults.autoSelector = '.slideshow';</script>
    <script type="text/javascript">
        $(function () {
            var default_view = 'grid';
            if ($.cookie('view') !== 'undefined') {
                $.cookie('view', default_view, { expires: 7, path: '/' });
            }
            function get_grid() {
                $('.list').removeClass('list-active');
                $('.grid').addClass('grid-active');
                $('.prod-cnt').animate({ opacity: 0 }, function () {
                    $('.prod-cnt').removeClass('dbox-list');
                    $('.prod-cnt').addClass('dbox');
                    $('.prod-cnt').stop().animate({ opacity: 1 });
                });
            }
            function get_list() {
                $('.grid').removeClass('grid-active');
                $('.list').addClass('list-active');
                $('.prod-cnt').animate({ opacity: 0 }, function () {
                    $('.prod-cnt').removeClass('dbox');
                    $('.prod-cnt').addClass('dbox-list');
                    $('.prod-cnt').stop().animate({ opacity: 1 });
                });
            }
            if ($.cookie('view') == 'list') {
                $('.grid').removeClass('grid-active');
                $('.list').addClass('list-active');
                $('.prod-cnt').animate({ opacity: 0 });
                $('.prod-cnt').removeClass('dbox');
                $('.prod-cnt').addClass('dbox-list');
                $('.prod-cnt').stop().animate({ opacity: 1 });
            }

            if ($.cookie('view') == 'grid') {
                $('.list').removeClass('list-active');
                $('.grid').addClass('grid-active');
                $('.prod-cnt').animate({ opacity: 0 });
                $('.prod-cnt').removeClass('dboxlist');
                $('.prod-cnt').addClass('dbox');
                $('.prod-cnt').stop().animate({ opacity: 1 });
            }

            $('#list').click(function () {
                $.cookie('view', 'list');
                get_list()
            });

            $('#grid').click(function () {
                $.cookie('view', 'grid');
                get_grid();
            });

            /* filter */
            $('.menuSwitch ul li').click(function () {
                var CategoryID = $(this).attr('category');
                $('.menuSwitch ul li').removeClass('cat-active');
                $(this).addClass('cat-active');

                $('.prod-cnt').each(function () {
                    if (($(this).hasClass(CategoryID)) == false) {
                        $(this).css({ 'display': 'none' });
                    };
                });
                $('.' + CategoryID).fadeIn();

            });
        });
    </script>
	<script src="js/jquery.singlePageNav.js"></script>
	
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider({
                prevText: '',
                nextText: '',
                controlNav: false,
            });
        });
    </script>
    <script>
        $(document).ready(function () {

            // hide #back-top first
            $("#back-top").hide();

            // fade in #back-top
            $(function () {
                $(window).scroll(function () {
                    if ($(this).scrollTop() > 100) {
                        $('#back-top').fadeIn();
                    } else {
                        $('#back-top').fadeOut();
                    }
                });

                // scroll body to 0px on click
                $('#back-top a').click(function () {
                    $('body,html').animate({
                        scrollTop: 0
                    }, 800);
                    return false;
                });
            });

        });
      </script>
      <script type="text/javascript">
      <!--
    function toggle_visibility(id) {
        var e = document.getElementById(id);
        if (e.style.display == 'block') {
            e.style.display = 'none';
            $('#togg').text('show footer');
        }
        else {
            e.style.display = 'block';
            $('#togg').text('hide footer');
        }
    }
    //-->
      </script>
      <script type="text/javascript" src="js/lib/jquery.mousewheel-3.0.6.pack.js"></script>

      <script type="text/javascript">
          $(function () {
              $('a[href*=#]:not([href=#])').click(function () {
                  if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                      var target = $(this.hash);
                      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                      if (target.length) {
                          $('html,body').animate({
                              scrollTop: target.offset().top
                          }, 1000);
                          return false;
                      }
                  }
              });
          });
      </script>
      <script src="js/stickUp.min.js" type="text/javascript"></script>
      <script type="text/javascript">
          //initiating jQuery
          jQuery(function ($) {
              $(document).ready(function () {
                  //enabling stickUp on the '.navbar-wrapper' class
                  $('.mWrapper').stickUp();
              });
          });
      </script>
      <script>
          $('a.menu').click(function () {
              $('a.menu').removeClass("active");
              $(this).addClass("active");
          });
      </script>
      
      <script> <!-- scroll to specific id when click on menu -->
    // Cache selectors
    var lastId,
        topMenu = $("#top-menu"),
        topMenuHeight = topMenu.outerHeight() + 15,
        // All list items
        menuItems = topMenu.find("a"),
        // Anchors corresponding to menu items
        scrollItems = menuItems.map(function () {
            var item = $($(this).attr("href"));
            if (item.length) { return item; }
        });

    // Bind click handler to menu items
    // so we can get a fancy scroll animation
    menuItems.click(function (e) {
        var href = $(this).attr("href"),
            offsetTop = href === "#" ? 0 : $(href).offset().top - topMenuHeight + 1;
        $('html, body').stop().animate({
            scrollTop: offsetTop
        }, 300);
        e.preventDefault();
    });

    // Bind to scroll
    $(window).scroll(function () {
        // Get container scroll position
        var fromTop = $(this).scrollTop() + topMenuHeight;

        // Get id of current scroll item
        var cur = scrollItems.map(function () {
            if ($(this).offset().top < fromTop)
                return this;
        });
        // Get the id of the current element
        cur = cur[cur.length - 1];
        var id = cur && cur.length ? cur[0].id : "";

        if (lastId !== id) {
            lastId = id;
            // Set/remove active class
            menuItems
              .parent().removeClass("active")
              .end().filter("[href=#" + id + "]").parent().addClass("active");
        }
    });
      </script>

    </div>
    </form>
</body>
</html>
