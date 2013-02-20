	
<div class="container">
<div id="about" class="content twothirds shadow">
		<h1 class="content-header">$Title</h1>
		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" /><% end_control %>
		<% end_if %>
		$Content
		$Form
		
		
</div>
	<div class="sidebar">
		<% if Menu(2) %>
			<% include SideNav %>
		<% end_if %>
		$SideBar
		
		<div id="at-a-glance" class="side-feature shadow">
		<h2>Tom's Take</h2>
		<ul class="rocklin-posts">
		<% control RssBlogPosts(3,http://blog.studentlife.uiowa.edu/blog/category/toms-take/feed/) %>
		<li><a href="$Link">$Title</a> posted on $Date.Format("F j, Y") <p>$Description.Summary(20)</p></li>
		<% end_control %>
		</ul>
		
		<h2>Tom on Twitter</h2>
		<script type="text/javascript" src="{$ThemeDir}/js/blogger.js"></script>
					<div class="twitter-post rocklin">
	
				<div class="tweet rocklin">
					<p class="account"><a href="http://twitter.com/vpstudentlifeui">@VPStudentLifeUI</a></p>
					<div id="twitter_update_list6">

					<script type="text/javascript" src="http://api.twitter.com/1/statuses/user_timeline.json?screen_name=vpstudentlifeui&callback=twitterCallback6&count=3&include_rts=1">
					</script>
				</div>
				</div>
			</div>
		
		</div>
		
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
