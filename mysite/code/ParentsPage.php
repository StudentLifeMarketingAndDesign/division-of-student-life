<?php
class ParentsPage extends Page {

	public static $db = array(
		"Ad1URL" => "Text",
		"Ad1Description" => "Text"
	);

	public static $has_one = array(
		/*"HeaderImage" => "Image"*/
		"Ad1Image" => "Image"
	);
	
	/*public static $allowed_children = array(
	
		"DepartmentPage" 
	
	);*/
	
	function getCMSFields() { 
	
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Ad1Image','Parents Ad Image'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Ad1URL','Parents Ad URL'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Ad1Description','Describe the Ad'));


		/*$fields->addFieldToTab('Root.Content.Main', new ImageField('HeaderImage','Header Image'));*/
		
		return $fields;

	}

}

class ParentsPage_Controller extends AskPage_Controller {

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