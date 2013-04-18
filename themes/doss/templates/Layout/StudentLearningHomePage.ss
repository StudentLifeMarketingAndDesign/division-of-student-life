<div class="container">
<div id="student-learning" class="content twothirds shadow">
<h1 class="intro-header">$Title</h1>

		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" /><% end_control %>
		<% end_if %>

		<blockquote style="margin-top:-5px; margin-bottom:5px;">$PurposeStatement</blockquote>

		$Content		
		
		<div style="clear:left"></div>
		<h2>Latest Assessment Reports</h2>
		<p><a href="/student-learning/assessments/">See all assessment reports</a></p>
		<div id="assessment-preview-container">
			<% control getAssessments(3) %>
			
				<div class="assessment preview first">
						<div class="assessment-content">
							<h3><a href="$Link">$Title</a> <span>published on $PublishedDate.Format("F j, Y")</span></h3>
							<p>$Content.Summary(15) <a href="$Link">[...] more</a></p>
							<p class="read-more"><a href="$Link">Read More...</a></p>
						</div>
	
				</div>
				
			<% end_control %>
				
				<div style="clear: left"></div>
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
			<p class="read-more"><a href="http://blog.studentlife.uiowa.edu/">See all blog posts</a></p>
			<div class="clearfix"></div>
			</div>
		<% end_if %>
	</div>
</div>