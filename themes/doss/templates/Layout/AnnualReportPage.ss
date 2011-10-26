	
<div class="container">
<div id="annual-report" class="content twothirds shadow" style="background: #d39841;">
	<% if Cover %>
	<div id="annual-report-header">
	
			<img src="$ThemeDir/images/annual_report_cover.png" />
		</div>		
		<% end_if %>
		
	

		
		<% if Image %>
			<% control Image.SetWidth(590) %><img src="$URL" alt="Feature Photo" /><% end_control %>
		<% end_if %>
		
		<div id="annual-report-content">
			<% if Cover %>
			
			<% else %>
	
			<span class="annual-report-header-context">Division of Student Life Annual Report 2011</span>
			<h1 class="annual-report-header">$Title</h1>
			<% end_if %>
			$Content
		</div>
		$Form
		
		
</div>
	<div class="annual-report-nav">
		<ul>
			<% control AnnualReportPages %>
			<li class="$EvenOdd"><a href="$Link"><span>$MenuTitle</span></a></li>
			
			<% end_control %>
		
		</ul>
	
	</div>
</div>
