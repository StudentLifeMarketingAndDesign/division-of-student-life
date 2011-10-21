<?php
class Page extends SiteTree {

	public static $db = array(
	);

	public static $has_one = array(
	);
	
	function allPagesToCache() {
	    // Get each page type to define its sub-urls
	    $urls = array();
	 
	    // memory intensive depending on number of pages
	    $pages = DataObject::get("SiteTree");
	 
	    foreach($pages as $page) {
	      $urls = array_merge($urls, (array)$page->subPagesToCache());
	    }
	     
	    // add any custom URLs which are not SiteTree instances
	    $urls[] = "sitemap.xml";
	 
	    return $urls;
  }
 
	/**
	
	* Get a list of URLs to cache related to this page
	*/
	function subPagesToCache() {
		$urls = array();
		
		// add current page
		$urls[] = $this->Link();
		
		// cache the RSS feed if comments are enabled
		if ($this->ProvideComments) {
		$urls[] = Director::absoluteBaseURL() . "pagecomment/rss/" . $this->ID;
		}
		
		return $urls;
	}
	
	function pagesAffectedByChanges() {
		$urls = $this->subPagesToCache();
		if($p = $this->Parent) $urls = array_merge((array)$urls, (array)$p->subPagesToCache());
		return $urls;
	}

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work

	}
	
	
}