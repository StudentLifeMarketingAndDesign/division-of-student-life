	
<div class="container">
<div id="about" class="content twothirds shadow">
		<h1 class="content-header">$Title</h1>
		<% if Image %>
			<% control Image.SetWidth(570) %><img src="$URL" class="photo" alt="Feature Photo" /><% end_control %>
		<% end_if %>
		$Content
		$Form
		
		
</div>
	<div class="sidebar">
		<% if Menu(2) %>
			<% include SideNav %>
		<% end_if %>
		
		<% if RssPosts %>
		<div id="feed-sidebar" class="shadow sidebar-box">
		<h2><% if AltFeedTitle %>$AltFeedTitle<% else %>$MenuTitle<% end_if %><br />posts from <a href="http://blog.studentlife.uiowa.edu/">our blog</a>!</h2>
		<ul>			
		<% control RssPosts %>
			
			
			<li class="$EvenOdd"><h3><a href="$Link">$Title</a></h3>
			<p>$Description.Summary(10) <a href="$Link">[read more]</a></p>
			</li>
			
			<% end_control %>
		</ul>
		<p><a href="http://blog.studentlife.uiowa.edu/">See all blog posts...</a></p>
		</div>
		
		<% end_if %>

	</div>
</div>
