<% require themedCSS(redflag) %>
<script src="{$ThemeDir}/js/slider/bjqs-1.3.min.js"></script>
<link type="text/css" rel="Stylesheet" href="{$ThemeDir}/js/slider/bjqs.css" />
<script>
jQuery(document).ready(function($) {
    $('.redflag-posters').bjqs({
        'height' : 415,
        'width' : 620,
        'responsive' : true
    });
});
</script>
<div class="container redflag">
<div id="about" class="content shadow">
		<h1 class="content-header"><img src="{$ThemeDir}/images/redflag/logo.png" alt="Red Flag Campaign"/></h1>
		<p class="subhead">at The University of Iowa</p>
		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" alt="Feature Photo" /><% end_control %>
		<% end_if %>
		
		<div class="redflag-twitter">
<a class="twitter-timeline" href="https://twitter.com/search?q=%23Iowa" data-widget-id="262961670819815425">Tweets about "#Iowa"</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

		</div>
				
		<div class="redflag-posters">
			<ul class="bjqs">
			
			<li class="first"><a href="#"><img src="{$ThemeDir}/images/redflag/Coercion-A_preview.jpg" title="Download and print this poster (pdf)"  /></a></li>
			<li class="first"><a href="#"><img src="{$ThemeDir}/images/redflag/Emotional-Abuse-A_preview.jpg" title="Download and print this poster (pdf)"  /></a></li>
			<li class="first"><a href="#"><img src="{$ThemeDir}/images/redflag/Isolation-A_preview.jpg" title="Download and print this poster (pdf)"  /></a></li>
			<li class="first"><a href="#"><img src="{$ThemeDir}/images/redflag/Stalking-Victim-A_preview.jpg" title="Download and print this poster (pdf)"  /></a></li>		
			<li class="first"><a href="#"><img src="{$ThemeDir}/images/redflag/Victim-Blaming-A_preview.jpg" title="Download and print this poster (pdf)"  /></a></li>			
			</ul>
		
		</div>
		<div class="clearfix"></div>
		$Content

		
		
		$Form
		
		
</div>

</div>
