		<div id="feed-sidebar" class="shadow sidebar-box">
		<h2><% if AltFeedTitle %>$AltFeedTitle<% else %>$MenuTitle<% end_if %><br />posts from <a href="http://blog.studentlife.uiowa.edu/">our blog</a>!</h2>
		<ul>			
		<% control RssPosts %>
			
			
			<li class="$EvenOdd"><h3><a href="$Link">$Title</a></h3>
			<p>$Description.Summary(10) <a href="$Link">[read more]</a></p>
			</li>
			
			<% end_control %>
		</ul>
		<p class="read-more"><a href="http://blog.studentlife.uiowa.edu/">See all blog posts</a></p>
		</div>
		
