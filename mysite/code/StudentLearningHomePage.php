<?php
class StudentLearningHomePage extends RssFeaturePage {

	public static $db = array(
	
		"PurposeStatement" => "Text"
		
	
	);
	
	public static $has_many = array(

	
	
	);
	
	public static $has_one = array(
		/*"HeaderImage" => "Image"*/
	);
	
	/*public static $allowed_children = array(
	
		
	
	);*/
	
	function getCMSFields() { 
	
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab('Root.Main', "Sidebar");
		//$fields->removeFieldFromTab('Root.Main', "Image");
		$fields->removeFieldFromTab('Root.Main', "Content");
	

		$fields->addFieldToTab('Root.Main', new TextField("PurposeStatement"));

		$fields->addFieldToTab('Root.Main', new HTMLEditorField("Content"));

		
		/*$fields->addFieldToTab('Root.Main', new UploadField('HeaderImage','Header Image'));*/
		
		return $fields;

	}

}

class StudentLearningHomePage_Controller extends RssFeaturePage_Controller {

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