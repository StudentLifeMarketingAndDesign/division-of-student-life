<!DOCTYPE html>
<html lang="en-US">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<% base_tag %>
  <title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title - The University of Iowa</title>
  <!--<title>Division of Student Life - The University of Iowa</title>-->
  <meta name="description" content="">
  <meta name="author" content="">

<!--  
  <link rel="shortcut icon" href="/favicon.ico">
  <link rel="apple-touch-icon" href="/apple-touch-icon.png">-->

  <% require themedCSS(styles) %> 
  <link href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:200,300,400,700" rel="stylesheet" type="text/css" >
<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'> 

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>  
  <!--[if lt IE 7 ]><script src="js/dd_belatedpng.js?v=1"></script><![endif]-->
  <script src="division-bar/js/division-bar.js"></script>
  <script src="{$ThemeDir}/js/jquery.hoverIntent.minified.js"></script>
  <script type="text/javascript">
  	jQuery(document).ready(function() {
	
			//On Hover Over
		function megaHoverOver(){
		    jQuery(this).find(".sub").stop().fadeTo('fast', 1).show(); //Find sub and fade it in
		    (function($) {
		        //Function to calculate total width of all ul's
		        jQuery.fn.calcSubWidth = function() {
		            rowWidth = 0;
		            //Calculate row
		            jQuery(this).find("ul").each(function() { //for each ul...
		                rowWidth += jQuery(this).width(); //Add each ul's width together
		            });
		        };
		    })(jQuery); 
		
		    if ( jQuery(this).find(".row").length > 0 ) { //If row exists...
		
		        var biggestRow = 0;	
		
		        jQuery(this).find(".row").each(function() {	//for each row...
		            jQuery(this).calcSubWidth(); //Call function to calculate width of all ul's
		            //Find biggest row
		            if(rowWidth > biggestRow) {
		                biggestRow = rowWidth;
		            }
		        });
		
		        jQuery(this).find(".sub").css({'width' :biggestRow}); //Set width
		        jQuery(this).find(".row:last").css({'margin':'0'});  //Kill last row's margin
		
		    } else { //If row does not exist...
		
		        jQuery(this).calcSubWidth();  //Call function to calculate width of all ul's
		        jQuery(this).find(".sub").css({'width' : rowWidth}); //Set Width
		
		    }
		}
		//On Hover Out
		function megaHoverOut(){
		  jQuery(this).find(".sub").stop().fadeTo('fast', 0, function() { //Fade to 0 opactiy
		      jQuery(this).hide();  //after fading, hide it
		  });
		}

		var config = {    
			 sensitivity: 2, // number = sensitivity threshold (must be 1 or higher)    
			 interval: 100, // number = milliseconds for onMouseOver polling interval    
			 over: megaHoverOver, // function = onMouseOver callback (REQUIRED)    
			 timeout: 500, // number = milliseconds delay before onMouseOut    
			 out: megaHoverOut // function = onMouseOut callback (REQUIRED)    
		};
	 
		jQuery("ul#univ-nav li .sub").css({'opacity':'0'});
		jQuery("ul#univ-nav li").hoverIntent(config);
			
			
			
	});
  
  
  </script>
</head>

<body id="home" <% if URLSegment = home %> onLoad="javascript:preloader() "<% end_if %>>



<% include DivisionBar %>
<% include Navigation %>

	$Layout

<% include Footer %>

  
</body>
</html>