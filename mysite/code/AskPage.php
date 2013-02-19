<?php
class AskPage extends Page {
	public static $db = array(
	);
	public static $has_one = array(
		/*"HeaderImage" => "Image"*/
	);
	public static $allowed_children = array(
		"AskQuestion"
	);
	
	function getCMSFields() { 
		$fields = parent::getCMSFields();
		/*$fields->addFieldToTab('Root.Main', new UploadField('HeaderImage','Header Image'));*/
		$fields->removeFieldFromTab('Root.Main', 'Content');
		$fields->removeFieldFromTab('Root.Main', 'Sidebar');
		$fields->removeFieldFromTab('Root.Main', 'Image');
		
		$categoryTable = new TableField(
			'QuestionCategory',
			'QuestionCategory', 
			array('Name' => 'Available Question Categories'),
			array('Name' => 'TextField')
		);
		
		$fields->addFieldToTab('Root.Main', $categoryTable);
		$fields->addFieldToTab('Root.Main', new HTMLEditorField("Content"));
		return $fields;
	}
}

class AskPage_Controller extends Page_Controller {
	public function Success() {
        return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
    }
	
	public function Categories() {
		$dataSet = DataObject::get("QuestionCategory",null,"Name ASC");
		if($dataSet)
			return $dataSet;
	}
	
	public function Questions(){
		$questions = DataObject::get("AskQuestion");
		
		if($questions)
			return $questions;
	}
	
	public function LatestAnswer(){
		$question = DataObject::get_one("AskQuestion");
		
		if($question)
			return $question;
	}

	function AskForm() {
	        // Create fields
	        
	        $categorySet = DataObject::get("QuestionCategory");
	        
	        $recaptchaField = new RecaptchaField('MyCaptcha');
			$recaptchaField->jsOptions = array('theme' => 'white'); // optional
	        
	        $fields = new FieldList(
	        	new DropdownField('QuestionCategoryID', 'What topic does your question fall under?', $categorySet->map('ID','Name')),
	            new TextareaField('Content', 'Your Question'),
	            new TextField('AskerName', 'Your First Name'),
	            new EmailField('AskerEmail', 'Your Email Address'),
	            new LabelField('recaptchaLabel', 'Enter the following words:'),
	           // $recaptchaField,
	            new LabelField('disclaimerLabel', 'Note: By submitting your question to this site, you
	            are allowing us to publish it online. If you wish to submit a question in private, please indicate this in your question or
	            <a href="mailto:belinda-marner@uiowa.edu">email me directly.</a>', null, true)

	            
	            );
	         
	        // Create actions
	        $actions = new FieldList(
	            new FormAction('doAsk', 'Ask Your Question Now!')
	        );

	        $validator = new RequiredFields('Content', 'AskerName', 'AskerEmail');
	        
	        $form = new Form($this, 'AskForm', $fields, $actions, $validator);
	        
			SpamProtectorManager::update_form($form, null, array('Content', 'AskerName', 'AskerEmail'));
	        return $form;
	}
	  
	function doAsk($data, $form) {
	 		$askPage = DataObject::get_one("AskPage");
			
			// Create a new object and load the form data into it
			$entry = new AskQuestion();
			
			if($askPage){
				$entry->setParent($askPage->ID);
			}
			$form->saveInto($entry);
			$questionCategory = $entry->QuestionCategory;
			$questionCategoryName = $questionCategory->Name;
			
			$entry->Title = substr($entry->Content,0,32)."…";
			$entry->MenuTitle = substr($entry->Content,0,32)."…";
			
	 		//print_r($form->fields);
			// Write it to the database.
			
			$entry->writeToStage('Stage');
			
			Session::set('ActionStatus', 'success'); 
			Session::set('ActionMessage', 'Thanks for submitting your question!');
			
			//Email notification		
			$from = "Student Life Website";
			$to = "belinda-marner@uiowa.edu";
			$subject = "New Question asked on the Student Life site";
			$body = '<p>A question has been asked on the student life site. Note: you can\'t answer the question by replying to this email. <a href="http://studentlife.uiowa.edu/admin/show/'.$entry->ID.'"> Answer here</a>.</p>
				<p>Question from '.$entry->AskerName.' [<a href="mailto:'.$entry->AskerEmail.'
				">'.$entry->AskerEmail.'</a>]: '.$entry->Content.'</p>
				<p><a href="http://studentlife.uiowa.edu/admin/show/'.$entry->ID.'">Answer this question</a></p>';
			$email = new Email($from, $to, $subject, $body);
			$email->send();
			Director::redirect($this->Link("?success=1#ask-success"));

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
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		}
}