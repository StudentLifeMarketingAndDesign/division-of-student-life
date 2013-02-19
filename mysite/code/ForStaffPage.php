<?php
class ForStaffPage extends Page {

	public static $db = array(
	
		
	);

	public static $has_one = array(
		/*"Photo" => "Image" */
	
	);
	
	function getCMSFields() { 
	
		$fields = parent::getCMSFields();
		/*$fields->removeFieldFromTab('Root.Main', 'Title');
		$fields->removeFieldFromTab('Root.Main', 'MenuTitle');
		$fields->removeFieldFromTab('Root.Main', 'Content');
		
		
		
		$fields->addFieldToTab('Root.Main', new TextField('Title','Name'));
		$fields->addFieldToTab('Root.Main', new TextField('PersonTitle','Title'));
		$fields->addFieldToTab('Root.Main', new TextField('OfficeLocation','Office Location'));
		$fields->addFieldToTab('Root.Main', new TextField('Phone','Phone Number'));
		$fields->addFieldToTab('Root.Main', new TextField('Email','Email Address'));
		$fields->addFieldToTab('Root.Main', new TextField('Website','Website Address'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content','Description'));*/


		
		/*$fields->addFieldToTab('Root.Main', new HTMLEditorField('SideBar','Sidebar'));*/
		
		return $fields;

	}
}
class ForStaffPage_Controller extends ContentController {

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