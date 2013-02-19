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

		$backgroundOptions = array ("#D39841" => "Orange", "#e9e9e9" => "White / Gray", "#FFC" => "Light Yellow");

		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab('Root.Main', "Sidebar");
		$fields->removeFieldFromTab('Root.Main', "Image");
		$fields->removeFieldFromTab('Root.Main', "Content");
		$fields->addFieldToTab('Root.Main', new CheckboxField('Cover','This is the cover page for the report'));
		/*$fields->addFieldToTab('Root.Main', new DropdownField('BackgroundColor','Background Color:', $backgroundOptions));*/

		$fields->addFieldToTab('Root.Main', new UploadField('Image','Main Image (optional)'));

		$fields->addFieldToTab('Root.Main', new HTMLEditorField("Content"));
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
		// http://www.silverstripe.org/customising-the-cms/show/20297
		/*$columns = $gridField->getConfig()->getComponentByType('GridFieldDataColumns'); //new line that needs to be added to your code
		$columns->setFieldCasting(array( //change $gridfield in your code to $columns 
			'Image' => '$URL' 
		));*/
		//echo '<pre>'; print_r( $gridField->getList() ); echo '</pre>'; exit;
		$fields->addFieldToTab("Root.Sidebar", $gridField);
		//$fields->addFieldToTab('Root.Main', new UploadField('HeaderImage','Header Image'));		
		return $fields;

	}

}

class AnnualReportPage_Controller extends RssFeaturePage_Controller {

	public function AnnualReportCover(){

		$cover = DataObject::get("AnnualReportPage", "Cover = 1", $sort = "Sort ASC");
		if($cover){
			return $cover;
		}else{
			return false;
		}
	
	}
	public function AnnualReportPages() {
		$annual_report_pages = DataObject::get("AnnualReportPage", "Cover = 0", $sort = "Sort ASC");
		
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

	/*public static $summary_fields = array(
  		'Thumbnail'=>'Thumbnail',
  		'Caption' => 'Caption'
 	);*/

 	public function getThumbnail() {
		if ($this->ID) {
			return $this->SetWidth(80);
		} else {
			return '(No Image)';
		}
	}

	public function getCMSFields()
	{
		return new FieldList(
			new TextField('Caption'),
			new UploadField('Image')
		);
	}

	public function getCMSFields_forPopup()
	{
		return new FieldList(
			new TextField('Caption'),
			new UploadField('Image')
		);
	}

}
