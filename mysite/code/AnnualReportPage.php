<?php
class AnnualReportPage extends RssFeaturePage {

	public static $db = array(

		"Cover" => "Boolean",
		"BackgroundColor" => "Text",
		"FeatureBoxText" => "HTMLText"
		
	
	);
	
	public static $has_many = array(
		"SidebarImage" => "SidebarImage"
	
	
	);
	
	public static $has_one = array(
		//"Image" => "Image"
	);
	
	public static $allowed_children = array(
	
		"AnnualReportPage"
	
		
	
	);
	
	function getCMSFields() { 
		
		$backgroundOptions = array ("#D39841" => "Orange", "#e9e9e9" => "White / Gray", "#FFC" => "Light Yellow", );
		
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab('Root.Content.Main', "Sidebar");
		$fields->removeFieldFromTab('Root.Content.Main', "Image");
		$fields->removeFieldFromTab('Root.Content.Main', "Content");
		$fields->addFieldToTab('Root.Content.Main', new CheckboxField('Cover','This is the cover page for the report'));
		/*$fields->addFieldToTab('Root.Content.Main', new DropdownField('BackgroundColor','Background Color:', $backgroundOptions));*/
			
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Main Image (optional)'));

	
		$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField("Content"));
		$fields->addFieldToTab('Root.Content.Sidebar', new HTMLEditorField("FeatureBoxText"));

		$manager = new FileDataObjectManager(
				$this, // Controller
				'SidebarImages', // Source name
				'SidebarImage', // Source class
				'Image', // File name on DataObject
				array(
					'Caption' => 'Caption', 
				), // Headings 
				'getCMSFields_forPopup' // Detail fields (function name or FieldSet object)
				// Filter clause
				// Sort clause
				// Join clause
			);
		$fields->addFieldToTab("Root.Content.Sidebar",$manager);
		//$fields->addFieldToTab('Root.Content.Main', new ImageField('HeaderImage','Header Image'));		
		return $fields;

	}
	

	

}

class AnnualReportPage_Controller extends RssFeaturePage_Controller {

	public function AnnualReportPages() {
		$annual_report_pages = DataObject::get("AnnualReportPage", null, $sort = "Sort DESC");
		
		if($annual_report_pages){
			return $annual_report_pages;
		}else{
			return false;
		}
	
	
	}
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
	/*public static $allowed_actions = array (
	);*/

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		}
}

class SidebarImage extends DataObject {

	public static $db = array(
		"Caption" => "Text"
	);
	
	public static $has_one = array(
		"Image" => "Image",
		"AnnualReportPage" => "AnnualReportPage"
	);

	public function getCMSFields_forPopup()
	{
		return new FieldSet(
			new TextField('Caption'),
			new FileIFrameField('Image')
		);
	}

}