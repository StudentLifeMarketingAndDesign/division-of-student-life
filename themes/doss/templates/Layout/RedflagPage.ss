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
<div class="container redflag ">
<div id="about" class="content twothirds shadow">
		<h1 class="content-header"><img src="{$ThemeDir}/images/redflag/logo.png" alt="Red Flag Campaign"/></h1>
		<p class="subhead">at The University of Iowa</p>
		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" alt="Feature Photo" /><% end_control %>
		<% end_if %>
		

				
		<div class="redflag-posters">
			<ul class="bjqs">
			
			<li class="first"><a href="assets/redflag/Coercion-A.pdf"><img src="{$ThemeDir}/images/redflag/Coercion-A_preview.jpg" title="Download and print this poster (pdf)"  /></a></li>
			<li><a href="assets/redflag/Emotional Abuse-A.pdf"><img src="{$ThemeDir}/images/redflag/Emotional-Abuse-A_preview.jpg" title="Download and print this poster (pdf)"  /></a></li>
			<li><a href="assets/redflag/Isolation-A.pdf"><img src="{$ThemeDir}/images/redflag/Isolation-A_preview.jpg" title="Download and print this poster (pdf)"  /></a></li>
			<li><a href="assets/redflag/Stalking-Victim-A.pdf"><img src="{$ThemeDir}/images/redflag/Stalking-Victim-A_preview.jpg" title="Download and print this poster (pdf)"  /></a></li>		
			<li><a href="assets/redflag/Victim Blaming-A.pdf"><img src="{$ThemeDir}/images/redflag/Victim-Blaming-A_preview.jpg" title="Download and print this poster (pdf)"  /></a></li>			
			</ul>
		
		</div>
		<div class="clearfix"></div>
		$Content

		
		
		$Form
		
		
</div>
	<div class="sidebar">
		<% if Menu(2) %>
			<% include SideNav %>
		<% end_if %>
		<a class="shadow redflag-facebook" href="https://www.facebook.com/pages/Red-Flag-Iowa/465801870138340?fref=dslwebsite">Like Red Flag at Iowa on Facebook!</a>
		<div id="at-a-glance" class="side-feature shadow redflag-events">
			$SideBar
		</div>
		<div class="redflag-twitter">
<a class="twitter-timeline" href="https://twitter.com/search?q=%23Iowa" data-widget-id="262961670819815425">Tweets about "#RedFlagIowa"</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

		</div>
		
<script src="http://www.gmodules.com/ig/ifr?url=http://www.google.com/ig/modules/youtube.xml&up_channel=MensAntiViolence&synd=open&w=280&h=390&title=&border=%23ffffff%7C3px%2C1px+solid+%23999999&output=js"></script>
		<!--<div id="contact" class="side-box">
			<h3>Contact Us</h3>
			<form action="#" method="get" accept-charset="utf-8">
				<input type="text" name="name" value="" id="name" placeholder="Your name..." class="text" /><br/>
				<input type="text" name="email" value="" id="email" placeholder="Your email..." class="text" /><br/>
				<textarea name="comment" placeholder="Message..."></textarea><br/>
				<input type="submit" value="Contact Us" class="button" />
			</form>
		</div>-->
	</div>
</div>
