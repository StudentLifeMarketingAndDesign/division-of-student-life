
<div class="container">

<div id="student-learning" class="content twothirds shadow">
<p class="all-assessments-link"><a href="$Parent.Link">See all assessment reports</a></p>
		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" /><% end_control %>
		<% end_if %>

				<div class="assessment">
					<div class="assessment-content">
						<h3>$Title <span>published on $PublishedDate.Format("F j, Y")</span></h3>
						$Content
					 
					</div>
				</div>
	
</div>
	<div class="sidebar">
	
		$SideBar
		<% include SideNav %>
		
		<!--<div id="at-a-glance" class="side-feature shadow">
		<h2>About the Director of Assessment and Strategic Initiatives</h2>
		<p><img src="$ThemeDir/images/belinda_placeholder" />There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. </p>
		<p>Read More..</p>
	</div>-->
	</div>
</div>
