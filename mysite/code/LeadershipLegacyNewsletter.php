<?php
class LeadershipLegacyNewsletter extends RssFeaturePage {

	public static $db = array(

		"isCover" => "Boolean",
		"BackgroundColor" => "Text",
		"FeatureBoxText" => "HTMLText",
		"SideBox" => "HTMLText",
		"Caption" => "Text"
		
	
	);
	
	public static $has_many = array(
		"SidebarImage" => "LeadershipLegacySidebarImage"
	
	
	);
	
	public static $has_one = array(
		//"Image" => "Image"
	);
	
	public static $allowed_children = array(

		"LeadershipLegacyNewsletter"

	);
	
	function getCMSFields() { 
		
		$backgroundOptions = array ("#D39841" => "Orange", "#e9e9e9" => "White / Gray", "#FFC" => "Light Yellow", );
		
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab('Root.Main', "Sidebar");
		$fields->removeFieldFromTab('Root.Main', "Image");
		$fields->removeFieldFromTab('Root.Main', "Content");
		$fields->addFieldToTab('Root.Main', new CheckboxField('isCover','This is the cover page for the newsletter'));
		/*$fields->addFieldToTab('Root.Main', new DropdownField('BackgroundColor','Background Color:', $backgroundOptions));*/
			
		$fields->addFieldToTab('Root.Main', new UploadField('Image','Main Image (optional)'));
		$fields->addFieldToTab('Root.Main', new TextField('Caption', 'Image Caption'));

	
		$fields->addFieldToTab('Root.Main', new HTMLEditorField("Content"));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField("SideBox"));
		$fields->addFieldToTab('Root.Sidebar', new HTMLEditorField("FeatureBoxText"));

		$gridFieldDisplayFields = new GridFieldDataColumns();
		$gridFieldDisplayFields->setDisplayFields(array(
			'Caption' => 'Caption',
			'Image' => 'Image'
		));

		/*$gridFieldDisplayFields->setFieldFormatting(array(
			'Image' => '$Thumbnail'
		));*/

		
		$gridFieldConfig = GridFieldConfig_RelationEditor::create()->addComponents($gridFieldDisplayFields);
		
		$gridField =  new GridField(
			'SidebarImages',
			'Sidebar Image',
			SidebarImage::get(),
			$gridFieldConfig
		);

		$gridField = new GridField('SidebarImage', 'Sidebar Images', $this->SidebarImage(), $gridFieldConfig);
		$fields->addFieldToTab("Root.Sidebar",$gridField);
		//$fields->addFieldToTab('Root.Main', new UploadField('HeaderImage','Header Image'));		
		return $fields;

	}
	

	

}

class LeadershipLegacyNewsletter_Controller extends RssFeaturePage_Controller {

	public function email(){
	
		return $this->renderWith(array('LeadershipLegacyNewsletter_email', 'Page'));	
		
		
	}
	
	public function Cover(){

		$cover = DataObject::get_one("LeadershipLegacyNewsletter", "isCover = 1");
		if($cover){
			return $cover;
		}else{
			return false;
		}
	
	}
	public function Pages() {
		$pages = DataObject::get("LeadershipLegacyNewsletter", "isCover = 0", $sort = "Sort ASC");
		
		if($pages){
			return $pages;
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

class LeadershipLegacySidebarImage extends DataObject {

	public static $db = array(
		"Caption" => "Text"
	);
	
	public static $has_one = array(
		"Image" => "Image",
		"LeadershipLegacyNewsletter" => "LeadershipLegacyNewsletter"
	);

	public function getCMSFields_forPopup()
	{
		return new FieldList(
			new TextField('Caption'),
			new UploadField('Image')
		);
	}

}