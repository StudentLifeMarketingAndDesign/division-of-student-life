<?php
class AskQuestion extends SiteTree {

	public static $db = array(
	
	"Answer" => "HTMLText",
	"AskerName" => "HTMLText",
	"AskerEmail" => "Text"
		
	
	);

	public static $has_one = array(
		/*"HeaderImage" => "Image"*/
		"QuestionCategory" => "QuestionCategory"
	);
	
	/*public static $allowed_children = array(
	
		"DepartmentPage" 
	
	);*/
	
	/*  function onAfterDelete() {
		// check on first write action, aka "database row creation" (ID-property is not set)
		if($this->ID) {
			LeftAndMain::ForceReload();	
		}
		
		parent::onAfterDelete();
    }*/
	
	function getCMSFields() { 
		$categorySet = DataObject::get("QuestionCategory");
	
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab('Root.Content.Main', 'Content');
		
		$fields->addFieldToTab('Root.Content.Main', new DropdownField(
		    'QuestionCategoryID',
		    'What category does this question fall under?',
		    Dataobject::get("QuestionCategory")->map("ID", "Name", "Please Select"),
		    $this->QuestionCategoryID
		    
			)
		);
		
		/*$fields->addFieldToTab('Root.Content.Main', new DropdownField('QuestionCategory', 'What category does this question fall under?', $categorySet->toDropdownMap('ID','Name')));*/
		
		
		$fields->addFieldToTab('Root.Content.Main', new ReadOnlyField('AskerName','Asking Person\'s Name (NOT displayed on the website)'));
$fields->addFieldToTab('Root.Content.Main', new ReadOnlyField('AskerEmail','Asking Person\'s Email Address (NOT displayed on the website)'));
		$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content','Question:', 4));
		$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Answer','Answer', 4));
	/*	
		if(!($this->Status == "Published" )) {
			$fields->addFieldToTab('Root.Content.Main', new LabelField('PublishedLabel', '<p style="font-size: 13px; color: orange;">This question is NOT published and cannot be seen on the website yet. Click Save and Publish below to approve it.</p>', null, $allowHTML = true));
		}else{
			$fields->addFieldToTab('Root.Content.Main', new LabelField('PublishedLabel', '<p style="font-size: 13px; color: green;">This question is visible on the website right now.</p>', null, $allowHTML = true));
		}
		*/
		
		
		return $fields;

	}

}

class AskQuestion_Controller extends Page_Controller {


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