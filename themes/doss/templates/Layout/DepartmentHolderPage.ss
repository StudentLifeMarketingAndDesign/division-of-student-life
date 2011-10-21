	
<div class="container fullsize">
<div id="about" class="content full shadow" >
		<h1 class="content-header">$Title</h1>
		$Content
		
		<div id="department-container">
		<% control Children %>
		
			<div class="department $EvenOdd $FirstLast">
	
			<% if WebsiteURL %>
				<h2><a href="$WebsiteURL"><span class="external_link">$Title</span></a></h2>
			<% else %>
				<h2>$Title</h2>
			<% end_if %>
			<div class="department-content">
			<% if Phone %>
			<h3>Phone Number</h3>
			<ul>
				<li><p>$Phone</p></li>
			</ul>
			<% end_if %>
			<% if WebsiteURL %>
				<h3><a href="$WebsiteURL" class="external_link" target="_blank">Website</a></h3>
			<% end_if %>
				<% if Address %>
					<h3>Located at</h3> <ul>
					<li><% if GoogleMapURL %> <a href="$GoogleMapURL">$Address</a><% else %> $Address <% end_if %></li></ul> 
				<% end_if %>
				<h3>Person(s) to Contact</h3>
					<ul>
						<% control DepartmentPeople %>
							<li><a href="mailto:$EmailAddress">$FirstName $LastName</a>, $PositionName - <% if Phone %> $Phone, <% end_if %> <a href="mailto:$EmailAddress">email</a>, <a href="$WebsiteURL">website</a></li>
						<% end_control %>
					</ul>
			</div>
					
			</div>
		
		<% if Even %>
			<div style="clear: left"></div>
		<% end_if %>
		
		<% end_control %>
			<div style="clear: left"></div>
		</div>	
				
		
</div>
	<!--<div class="sidebar">
		<% if Menu(2) %>
			<% include SideNav %>
		<% end_if %>
		$SideBar
	</div>-->
</div>
