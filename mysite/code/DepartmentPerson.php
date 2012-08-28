<?php
class DepartmentPerson extends DataObject {

	public static $db = array(
		
		"FirstName" => "Varchar(255)",
		"LastName" => "Varchar(255)",
		"PositionName" => "Varchar(255)",
		"EmailAddress" => "Varchar(255)",
		"Phone" => "Varchar(255)"
		

	
	);

	public static $has_one = array(
		"Department" => "DepartmentPage"
	);
	
	public static $allowed_children = array(
	
		/*"FeaturePageItem" */
	
	);
	
	function getCMSFields() { 
	
		$fields = parent::getCMSFields();
		/*$fields->addFieldToTab('Root.Content.Main', new ImageField('HeaderImage','Header Image'));*/
		
		return $fields;

	}

}
