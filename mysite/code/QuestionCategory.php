<?php
class QuestionCategory extends DataObject {

	public static $db = array(
		"Name" => "varchar(155)"
	
	);

	public static $has_many = array(
		"Questions" => "AskQuestion"
	);
	
	/*public static $allowed_children = array(
	
		"DepartmentPage" 
	
	);*/

}