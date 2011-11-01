<% if BackgroundColor = e9e9e9 %>
	<style>
		#annual-report-content h1{
		
			color: #003448;
		
		}
	
	
	</style>

<% end_if %>
<div class="container">
<div id="annual-report" class="content shadow" style="background: $BackgroundColor">
	<% if Cover %>
	<div id="annual-report-header">
	
			<img src="$ThemeDir/images/annual_report_cover.png" />
		</div>		
		<% end_if %>
		
	

		
		<% if Image %>
			<% control Image.SetWidth(650) %><img src="$URL" alt="Feature Photo" /><% end_control %>
		<% end_if %>
		
		<div id="annual-report-content">
			<% if Cover %>
			
			<% else %>
	
			<span class="annual-report-header-context">Division of Student Life Annual Report 2011</span>
			<h1 class="annual-report-header">$Title</h1>
			<% end_if %>
			$Content
			
			<% if Cover %>
				<h3>Table of Contents</h3>
				<ul>
					<% control AnnualReportPages %>
					
					<li><a href="$Link">$MenuTitle</a></li>
					<% end_control %>
				
				 
				</ul>
			
			<% end_if %>
			
		</div>
		$Form
		<! something here -->
		
</div>
	<div class="annual-report-nav">
		<ul>
			<% control AnnualReportPages %>
			<li class="$LinkOrCurrent"><a href="$Link">$MenuTitle</a></li>
			
			<% end_control %>
		
		</ul>
	
	</div>
</div>
