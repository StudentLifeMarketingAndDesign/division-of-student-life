<?php
class StaffSpotlightPage extends Page {

	public static $db = array(
	
		"StaffTitle" => "Text",
		"Department" => "Text",
		
		
	);

	public static $has_one = array(
		"Headshot" => "Image"
	
	);
	
	public static $allowed_children = array ("StaffPersonPage");
	
	function getCMSFields() { 
	
		$fields = parent::getCMSFields();
		/*$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('SideBar','Sidebar'));*/
		
		$fields->addFieldToTab('Root.Content.Main', new TextField('StaffTitle','Title'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Department','Department'));
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Headshot','Image'));

		
		return $fields;

	}
}
class StaffSpotlightPage_Controller extends Page_Controller {

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