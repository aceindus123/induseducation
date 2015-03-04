<%@ Control Language="C#" AutoEventWireup="true" CodeFile="indusedubelowmenu.ascx.cs" Inherits="usercontrols_indusedubelowmenu" %>
	<title>Faculty </title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<link rel="stylesheet" href="../css/reset.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="../css/zerogrid.css" type="text/css" media="all" />
	<link rel="stylesheet" href="../css/responsive.css" type="text/css" media="all" />
	<link rel="stylesheet" href="../css/responsiveslides.css" />  


  <link href="../css/hoverstyles.css" rel="stylesheet" type="text/css" />  
    
    
    <script src="../js/jquery-1.7.1.min.js" type="text/javascript"></script>
	<script src="../js/responsiveslides.js"></script>
	<script>
	    $(function () {
	        $("#slider").responsiveSlides({
	            auto: true,
	            pager: true,
	            nav: true,
	            speed: 500,
	            maxwidth: 1000,
	            namespace: "centered-btns"
	        });
	    });
	</script>
    <div style="width:1000px">
    <div class="row-bot">
			<div class="slider zerogrid">
		   		<div class="rslides_container">
					<ul class="rslides" id="slider">
						<li><img src="../images/slider-img1.jpg" width="960" height="250" alt="" /></li>
						<li><img src="../images/slider-img2.jpg"  width="960" height="250"  alt="" /></li>
						<li><img src="../images/slider-img3.jpg"  width="960" height="250"  alt="" /></li>
					</ul>
				</div>
		    </div>
	    </div>
        </div>