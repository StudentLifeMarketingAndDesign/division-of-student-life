
<div class="container">
<div id="student-learning" class="content twothirds shadow">
<h1 class="intro-header">$Title</h1>
		
	
		
		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" /><% end_control %>
		<% end_if %>
		
		<% if PurposeStatement %>
			<blockquote style="margin-top:-5px; margin-bottom:5px;">$PurposeStatement</blockquote>
		<% end_if %>
		
		<!--$Content-->
		$Content		
			<!--<div id="why-assesment-testimonial" class="shadow">
			<img src="$ThemeDir/images/belinda_placeholder" />
			<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
			<p class="read-more">Read More</p>
			</div>-->
		
		<div style="clear:left"></div>
		<h2>Latest Change Team Reports</h2>
		<div id="assessment-preview-container">
		
		
		<% control MulticulturalReports(3) %>
		
			<div class="assessment preview first multicultural">
					<div class="assessment-content">
						<h3><a href="$Link">$Title</a> <span>published on $PublishedDate.Format("F j, Y")</span></h3>
						<p>$Content.Summary(15) <a href="$Link">[...] more</a></p>
						<p class="read-more"><a href="$Link">Read More...</a></p>
					</div>

			</div>
			
		<% end_control %>
		
			
			<div style="clear: left"></div>
			<p><a href="change-team-reports/">See all Change Team Reports </a></p>
		</div>
		
		
		
	
		
		
		
		

		
</div>
	<div class="sidebar">
	
		$SideBar
		

		<% include SideNav %>
			<% if RssPosts(3) %>
		<div id="feed-sidebar" class="shadow sidebar-box">
		<h2>$MenuTitle<br />posts from <a href="http://blog.studentlife.uiowa.edu/">our blog</a>!</h2>
		<ul>			
		<% control RssPosts(3) %>
			
			
			<li class="$EvenOdd"><h3><a href="$Link">$Title</a></h3>
			<p>$Description.Summary(10) <a href="$Link">[read more]</a></p>
			</li>
			
			<% end_control %>
		</ul>
		<p><a href="http://blog.studentlife.uiowa.edu/">See all blog posts</a></p>
		</div>
		
		<% end_if %>

	</div>
</div>
