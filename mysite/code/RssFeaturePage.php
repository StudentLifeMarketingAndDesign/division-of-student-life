<?php
class RssFeaturePage extends Page {

	public static $db = array(
		"FeedURL" => "Text",
		"AltFeedTitle" => "Text"
	);

	public static $has_one = array(
		
	);
	
	function getCMSFields() { 
	
		$fields = parent::getCMSFields();
		$fields->RemoveFieldFromTab("Root.Main", "Content");
		$fields->RemoveFieldFromTab("Root.Main", "SideBar");
		$fields->addFieldToTab('Root.Main', new TextField('FeedURL','RSS Feed URL'));
		$fields->addFieldToTab('Root.Main', new TextField('AltFeedTitle','Alternate Feed Title (optional)'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content','Content'));


	//	$fields->addFieldToTab('Root.Main', new HTMLEditorField('SideBar','Sidebar'));
	//	$fields->addFieldToTab('Root.Main', new UploadField('Image','Main Image (Optional)'));
		return $fields;

	}
}
class RssFeaturePage_Controller extends Page_Controller {

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
	
	
	public function RssPosts(){
		$feedURL = $this->FeedURL;
		$posts = $this->RssDisplay(5, $feedURL);
		
		if($posts){return $posts;}
	}

	public function init() {
		parent::init();
		//print_r($this->FeedURL);
		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		}
}