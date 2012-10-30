
<div class="container">
<div id="student-learning" class="content twothirds shadow">
<h1 class="intro-header">$Title</h1>
		
				
		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" /><% end_control %>
		<% end_if %>
		
		<% if Children %>
			<div id="assessment-preview-container">
				<% control MulticulturalReports(3) %>
		
					<div class="assessment preview first multicultural">
						<div class="assessment-content">
							<h3><a href="$Link">$Title <span>published on $PublishedDate.Format(F j&#44; Y)</span></span></a></h3>
							<p>$Content.Summary(15) <a href="$Link">[...] more</a></p>
							<p class="read-more"><a href="$Link">Read More...</a></p>
						</div>
					</div>
				<% end_control %>
				</div><!-- end assessment preview container -->
		<% end_if %>
		

			<div style="clear: left"></div>
			<h2>More Reports</h2>
			<ul>
				<% control MulticulturalReports(100,3) %>
					<li><a href="$Link"><strong>$Title</strong> - published on $PublishedDate.Format(F j&#44; Y)</a></li>
				<% end_control %>
			</ul>
		
		

</div><!-- end container -->
	<div class="sidebar">
	
		$SideBar
		<% include SideNav %>
		
		<!--<div id="at-a-glance" class="side-feature shadow">
			<h2>About the Director of Assessment and Strategic Initiatives</h2>
			<p><img src="$ThemeDir/images/belinda_placeholder" class="director-assessment"/>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. </p>
			<p>Read More..</p>
		</div>-->
	</div>
</div>
