<link rel="alternate" type="application/rss+xml" title="Division of Student Life News &raquo; Feed" href="http://blog.studentlife.uiowa.edu/feed/" /> 
<script type="text/javascript">

function preloader() 
{
     // counter
     var i = 0;

     // create object
     imageObj = new Image();

     // set image list
     images = new Array();
     images[0] = "{$ThemeDir}/images/feature-slide1.png";
     images[1] = "{$ThemeDir}/images/feature-slide2.png";
     images[2] = "{$ThemeDir}/images/feature-slide3.png";
     images[3] = "{$ThemeDir}/images/feature-slide4.png";
     // start preloading
     for(i=0; i<=3; i++) 
     {
          imageObj.src=images[i];
     }

} 


function toTab(p) {
  <% control Children %>
  $('#feature-$Pos').hide();
  $('#feature-image-$Pos').hide();
  <% end_control %>
  $('#feature-' + p).show();
  $('#feature-image-' + p).show();
  document.getElementById("feature-tabs").style.backgroundImage = 'url({$ThemeDir}/images/feature-slide'+ p + '.png)';

}
</script>
		<script type="text/javascript" src="{$ThemeDir}/js/blogger.js"></script>

<div class="container-feature">
	<div id="feature">
		<div id="feature-tabs">
			<ul id="feature-tabs-list">
				<% control Children %>
				<li><a href="#" onclick="javascript:toTab('$Pos');return false;">$Title</a></li>
				<% end_control %>
				<!--<li><a href="#">Welcome</a></li>
				<li><a href="#" onClick="javascript:changeImage();">Priority #1</a></li>
				<li><a href="#">Priority #2</a></li>
				<li><a href="#">Priority #3</a></li>-->
			</ul>
			<% control Children %>
				<div id="feature-$Pos" class="feature-content">
					$Content
				</div>
			<% end_control %>
			<% if Count = 3 %>
			<div id="feature-content-welcome" class="feature-content">
				<h2>Welcome</h2>
				<p>Student Services professionals at the University of Iowa are the campus experts on student affairs.  From basics of housing and dining, to counseling services to engagement and entertainment, the division is purposeful in providing these services utilizing cutting edge thinking and best practices in higher education.</p>
				<p>To support our ongoing mission of student success, we have outlined our key priorities for 2010 as:</p>
				<ul>
					<li><a href="#" class="boldlink">Undergraduate Leadership Development</a></li>
					<li><a href="#" class="boldlink">Health and Safety</a></li>
				    <li><a href="#" class="boldlink">Multiculturalism, Diversity, and Inclusion</a></li>
				</ul>
			</div>
			<div id="feature-content-p1" class="feature-content" style="display:none;">
				<h2>Undergraduate Leadership Development</h2>
				<p>Students succeed at Iowa when they become effective leaders. We provide an array of leadership experiences for students.  Our strategic priority is to expand the number of undergraduates who have access to a meaningful student leadership experience.  Our ambitious goal is Òall Hawkeyes as leadersÓ.</p>
				<p><a href="#">Find out more about Undergraduate Leadership Development &#187;</a></p>
			</div>
			<div id="feature-content-p2" class="feature-content" style="display:none;">
				<h2>Health and Safety!!!</h2>
				<p>Staying healthy is a critical part of being successful. We help students make healthy choices through education and service, and have programs to help when health issues become problematic for students. Alcohol harm reduction is a strategic priority within the Division, and across the institution.</p>
				<p><a href="#">Find out more about Health and Safety &#187;</a></p>
			</div>
			<div id="feature-content-p3" class="feature-content" style="display:none;">
				<h2>Multiculturalism, Diversity, and Inclusion</h2>
				<p>Multicultural competence is a reflective process. Determining how the Division can continue to contribute to the multicultural competence of our students is enhanced by an inward focus on our own multicultural competence. To make a significant outward contribution, we need to have an effective framework for ongoing staff development in this area. </p>
				<p><a href="#">Find out more about Multiculturalism, Diversity, and Inclusion &#187;</a></p>
			</div>
			<% end_if %>
		</div>
		<div id="feature-image">
			<% control Children %>
				<% if Pos = 1 %>
					<img src="$FeatureImage.URL" id="feature-image-$Pos" alt="Featured Image" />
				<% else %>
					<img src="$FeatureImage.URL" id="feature-image-$Pos" style="display: none;" alt="Featured Image" />
				<% end_if %>
			<% end_control %>
		</div>
	</div>
</div>

<div class="container">
<div id="news" class="content twothirds shadow">
		<h2 class="content-header"><a href="http://blog.studentlife.uiowa.edu/">News</a> <a href="http://blog.studentlife.uiowa.edu/feed/"><img src="$ThemeDir/images/rss-icon.png" alt="RSS" /></a></h2>
		<% control RssDisplay(3, http://afterclass.uiowa.edu/events/newrss) %>
		<div class="post">
			<h2 class="post-header"><a href="$Link">$Title</a></h2>
			<p class="post-details">Posted on $Date.Format("F j&#44; Y")</p>
			<div class="post-content">
				<p>$Description</p>					
			</div>
			<p class="post-read-more"><a href="$Link">Read More</a></p>
			<div class="clear-right"></div>
		</div>
		<% end_control %>
		<div id="news-footer">
			<ul>
				<li id="news-footer-browse"><a href="http://blog.studentlife.uiowa.edu/">Browse the News Archives</a></li>
				<!-- <li id="news-footer-vp_blog"><a href="#">Read the Vice PresidentÍs Blog</a></li> -->
			</ul>
		</div>
	</div>
	<div class="sidebar">
    	<a href="give/"><img src="{$ThemeDir}/images/give-now-banner.jpg" alt="Give to the Divison of Student Life"/ style="margin-bottom:9px;"></a>
    
		<object width="300" height="225" style="margin-bottom:9px;"> <param name="flashvars" value="offsite=true&lang=en-us&page_show_url=%2Fphotos%2Fimubuddy%2Fsets%2F72157624281419021%2Fshow%2F&page_show_back_url=%2Fphotos%2Fimubuddy%2Fsets%2F72157624281419021%2F&set_id=72157624281419021&jump_to="></param> <param name="movie" value="http://www.flickr.com/apps/slideshow/show.swf?v=71649"></param> <param name="allowFullScreen" value="true"></param><embed type="application/x-shockwave-flash" src="http://www.flickr.com/apps/slideshow/show.swf?v=71649" allowFullScreen="true" flashvars="offsite=true&lang=en-us&page_show_url=%2Fphotos%2Fimubuddy%2Fsets%2F72157624281419021%2Fshow%2F&page_show_back_url=%2Fphotos%2Fimubuddy%2Fsets%2F72157624281419021%2F&set_id=72157624281419021&jump_to=" width="300" height="225"></embed></object>
		
		<!--<div id="staff-spotlight" class="side-box single-image">
			<a href="#"><img src="http://dummyimage.com/300x225.gif" class="shadow" /></a>
		</div> -->
		<!--<div id="newsletter-signup" class="side-box">
			<h3>Join our Mailing List</h3>
			<form action="#" method="post" accept-charset="utf-8">
				<input type="text" name="mailinglist" value="" id="newsletter-field" placeholder="Enter Your Email Address..." />
				<input type="image" name="submit" value="" id="newsletter-submit" src="{$ThemeDir}/images/button-join.png" />
			</form>
		</div>-->
		<div id="twitter" class="side-box">
			<h3>Student Life on Twitter</h3>
			
			
			
			<div class="twitter-post">
	<div class="avatar"><a href="http://twitter.com/vpstudentlifeui/"><img src="{$ThemeDir}/images/tr_avatar_normal.jpg" alt="Avatar" /></a></div>
		
				<div class="tweet">
					<p class="account"><a href="http://twitter.com/vpstudentlifeui">@VPStudentLifeUI</a></p>
					<div id="twitter_update_list6">

					<script type="text/javascript" src="http://api.twitter.com/1/statuses/user_timeline.json?screen_name=vpstudentlifeui&callback=twitterCallback6&count=1&include_rts=1">
					</script>
				</div>
				<div style="clear: left"></div>
				</div>
			</div>
				
							
		<div class="twitter-post">
			<div class="avatar"><a href="http://twitter.com/imubuddy/"><img src="{$ThemeDir}/images/avatar-1.png" alt="Avatar" /></a></div>
			<div class="tweet">
				<p class="account"><a href="http://twitter.com/imubuddy/">@imubuddy</a> Iowa Memorial Union</p>
				<div id="twitter_update_list">
				<script type="text/javascript" src="http://api.twitter.com/1/statuses/user_timeline.json?screen_name=imubuddy&callback=twitterCallback2&count=1&include_rts=1">
				</script>
			</div>		
			</div>
		</div>
		
		<!--<div class="twitter-post">
			<div class="avatar"><a href="http://twitter.com/BijouTheater/"><img src="{$ThemeDir}/images/avatar-2.png" alt="Avatar" /></a></div>
				<div class="tweet">
					<p class="account"><a href="http://twitter.com/BijouTheater/">@BijouTheater</a> Bijou Theater</p>
				<div id="twitter_update_list3">

					<script type="text/javascript" src="http://api.twitter.com/1/statuses/user_timeline.json?screen_name=bijoutheater&callback=twitterCallback3&count=1&include_rts=1">
					</script>
				</div>
			</div>
		</div>-->
		
		
		
		
			<div class="twitter-post">
				<div class="avatar"><a href="http://twitter.com/recserv/"><img src="{$ThemeDir}/images/avatar-3.png" alt="Avatar" /></a></div>
				<div class="tweet">
					<p class="account"><a href="http://twitter.com/recserv/">@recserv</a> UI Rec Services</p>
					<div id="twitter_update_list4">

					<script type="text/javascript" src="http://api.twitter.com/1/statuses/user_timeline.json?screen_name=recserv&callback=twitterCallback4&count=1&include_rts=1">
					</script>
				</div>

				</div>
			</div>
			
			
			<div class="twitter-post">
				<div class="avatar"><a href="http://twitter.com/krui"><img src="{$ThemeDir}/images/avatar-4.png" alt="Avatar" /></a></div>
				<div class="tweet">
					<p class="account"><a href="http://twitter.com/krui">@KRUI</a> KRUI 89.7 FM</p>
					<div id="twitter_update_list5">

					<script type="text/javascript" src="http://api.twitter.com/1/statuses/user_timeline.json?screen_name=krui&callback=twitterCallback5&count=1&include_rts=1">
					</script>
				</div>
				</div>
			</div>
			
			
		</div>
	</div>
</div>