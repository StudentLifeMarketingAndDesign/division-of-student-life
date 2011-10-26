<?php
class Page extends SiteTree {

	public static $db = array(
		"SideBar" => "HTMLText"
	);

	public static $has_one = array(
		"Image" => "Image"
	);
	
	function getCMSFields() { 
	
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('SideBar','Sidebar'));
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Main Image (Optional)'));
		return $fields;

	}
}
class Page_Controller extends ContentController {

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
	
	
	
	function results($data, $form){
        $data = array(
            'Results' => $form->getResults(),
            'Query' => $form->getSearchQuery(),
            'Title' => 'Search Results'
        );
        $this->Query = $form->getSearchQuery();
     
        return $this->customise($data)->renderWith(array('Page_results', 'Page'));
    }
    

    function SearchForm() {
        $searchText = isset($this->Query) ? $this->Query : '';
         
        $fields = new FieldSet(
            new TextField("Search", "", $searchText)
        );
 
        $actions = new FieldSet(
            new FormAction('results', 'Search')
        );
         
        return new SearchForm($this, "SearchForm", $fields, $actions);
    }

	public function getAssessments($number = 0, $start = 0){
		$assessmentSet = DataObject::get("AssessmentReportPage", null, $sort = "PublishedDate DESC", null, "$start, $number");
		
		if($assessmentSet)
			return $assessmentSet;
	}
	
	public function AssessmentCoordinators(){
	
		$assessmentProfiles = DataObject::get("AssessmentCoordinatorProfile");
		if($assessmentProfiles)
			return $assessmentProfiles;
	
	}
	
	public function AskPage(){
		$askPage = DataObject::get("AskPage");
		
		if($askPage)
			return $askPage;
	
	
	}

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		}
}