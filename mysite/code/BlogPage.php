<?php

class BlogPage extends Page {

	private static $db = array(
		'Date' => 'Date',
		'Author' => 'Varchar',
		'Intro' => 'text',
		'Factheading' => 'Varchar',
		'Fact' => 'text'
	);

	private static $has_many = array (
		'BlogPhotos' => 'Image'
	);

	private static $can_be_root = false;

	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', DateField::create('Date')->setConfig('showcalendar', true), 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('Author', 'Author'), 'Content');
		$fields->addFieldToTab('Root.Main', TextAreaField::create('Intro', 'Intro'), 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('Factheading', 'Fact Heading'), 'Content');
		$fields->addFieldToTab('Root.Main', TextAreaField::create('Fact', 'Fun Fact'), 'Content');
		$fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('BlogPhotos', 'Photos'));
		
		$photo->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpg', 'jpeg'));
		$photo->setFolderName('blog-photos');

		return $fields;
	}

}

class BlogPage_Controller extends Page_Controller {

	public function Comments ($PageID){
		return Comment::get()
			->filter('ParentID', $PageID)
			->sort('Created', 'ASC');
	}

	private static $allowed_actions = array (
		'CommentForm'
	);
	public function CommentForm(){
		$form = BootstrapForm::create(
			$this,
			__Function__,
			Fieldlist::create(
				TextField::create('Name', '')
					->setAttribute('placeholder','Name'),
				TextAreaField::create('Comment', '')
					->setAttribute('placeholder','Type You Comment Here')
			),
			FieldList::create(
				FormAction::create('handleComment','Post Comment')
					->setStyle('primary')
					->addExtraClass('btn square-btn')
			),
			RequiredFields::create('Name', 'Comment')
		);

		return $form;
	}

	public function handleComment($data, $form){
		$comment = Comment::create();
		$comment->Name = $data['Name'];
		$comment->Comment = $data['Comment'];
		$comment->ParentID = $this->ID;
		$comment->write();

		$form->sessionMessage('Thanks for your comment!','good');

		return $this->redirectBack();
	}
	
}