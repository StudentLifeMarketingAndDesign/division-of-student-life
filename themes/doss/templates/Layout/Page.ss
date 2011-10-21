	
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
		$SideBar
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
