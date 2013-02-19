<?php
class DepartmentPage extends Page {

	public static $db = array(
	
		"Address" => "Text",
		"Phone" =>"Text",
		"GoogleMapURL" => "Text",
		"WebsiteURL" => "Text"
		
		
	
	);
	
	public static $has_many = array(
		"DepartmentPeople" => "DepartmentPerson"
	
	
	);
	
	public static $has_one = array(
		/*"HeaderImage" => "Image"*/
	);
	
	public static $allowed_children = array(
	
		/*"FeaturePageItem" */
	
	);
	
	function getCMSFields() { 
	
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab('Root.Main', "Sidebar");
		$fields->removeFieldFromTab('Root.Main', "Image");
		$fields->removeFieldFromTab('Root.Main', "Content");
		
		$fields->addFieldToTab('Root.Main', new TextField("Phone", "Phone Number"));
		$fields->addFieldToTab('Root.Main', new TextField("Address"));
		$fields->addFieldToTab('Root.Main', new TextField("GoogleMapURL", "Google Maps URL (optional)"));
		$fields->addFieldToTab('Root.Main', new TextField("WebsiteURL"));

		
		$fields->addFieldToTab('Root.Main', new LabelField("Department Contacts:", "Department Contacts:"));
		$fields->addFieldToTab("Root.Main", new ComplexTableField(
			$this,
			'Department People',
			'DepartmentPerson',
			array('FirstName' => 'FirstName', 'LastName'=>'LastName', "EmailAddress"=>"Email", "Phone"=>"Phone"),
			'getCMSFields_forPopup'
		));
		

		
		/*$fields->addFieldToTab('Root.Main', new HTMLEditorField("Content"));*/

		
		/*$fields->addFieldToTab('Root.Main', new UploadField('HeaderImage','Header Image'));*/
		
		return $fields;

	}

}

class DepartmentPage_Controller extends Page_Controller {

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