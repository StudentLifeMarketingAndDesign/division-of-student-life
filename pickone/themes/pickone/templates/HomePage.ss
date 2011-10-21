<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html lang="en-US"
      xmlns="http://www.w3.org/1999/xhtml"
      xml:lang="en-US">
<head>
        <% base_tag %>

  <title>Home - Pick One! - The University of Iowa</title>
  <meta http-equiv="Content-type"
        content="text/html; charset=us-ascii" />
  <link rel="shortcut icon"
        href="/favicon.ico" />
  <link href='http://fonts.googleapis.com/css?family=Reenie+Beanie&amp;subset=latin'
        rel='stylesheet'
        type='text/css' />
  <link href='http://fonts.googleapis.com/css?family=Cabin'
        rel='stylesheet'
        type='text/css' />
        <% require themedCSS(reset) %><% require themedCSS(homepagelayout) %><% require themedCSS(typography) %><% require themedCSS(form) %>
</head>

<body>
	
  <div id="background-wrapper">
    <!-- Header -->

    <div id="header">
      <div id="header-content">
      <a href="http://www.uiowa.edu"><img id="uiowalogo" src="$ThemeDir/images/uiowalogo.png" /></a>
        <img src="$ThemeDir/images/pickone_orange.png" class="pickone-logo" style="margin-top: 20px" />
       <a href="http://imu.uiowa.edu/students/"> <img id="studentlifelogo" src="$ThemeDir/images/studentlifelogo.png" /></a>
      </div>

      <div class="clear-left"></div>
    </div>

    <div id="tagline-wrapper">
      <div id="tagline"
           class="typography">
        <p>make this the best year of your life.<br />
        find one thing on campus you <strong>love.</strong></p>
      </div>
      <div id="login-box">
      
     <a href="http://pickone.uiowa.edu/Home"> <img src="/pickone/themes/pickone/images/startnowbutton.png" class="getstarted-button"></a>
      
      <div class="clear-right"></div>
      
      </div>
    </div>

    <div id="body-background-wrapper">
      <div id="content-wrapper"
           class="typography">
        <div id="content"
             class="typography">
          <h1><img src="$ThemeDir/images/latestupdates.png" alt="Latest Updates" /></h1>
          
          
          <% control RSSBlogPosts(10, http://imu.uiowa.edu/news/category/pick-one/) %>
          
          <div class="post">
          <h2><a href="$Link">$Title</a></h2>
          <h3>$Date.Format(F j&#44; Y) by $Author</h3>
          <p>$Description <a href="$Link">read more</a></p> 
          
          </div>
          <% end_control %>
          
          
                    
          
          $Form
        </div>

        <div id="sidebar"
             class="typography"></div>
      </div>
    </div>
  </div>

  <div id="footer">
    <div id="footer-content"
         class="typography">
      <p>&copy; $Now.Year <a href="http://www.uiowa.edu/">The University of Iowa</a></p>
    </div>
  </div>
</body>
</html>
