<?php

class HomePage extends Page{

	private static $db = array(
		'Intro' => 'Varchar',
		'CTA' => 'Text',
		'StoryTitle' => 'Varchar',
		'StorySubheading' => 'Varchar',
		'StoryContent' => 'Text'
	);

	private static $has_one = array(
		'StoryImage' => 'Image'
	);


	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->addFieldsToTab('Root.Main', array (
			TextField::create('Intro', 'Introduction'),
			TextAreaField::create('CTA', 'CallToAction')
		), 'Content');

		$fields->addFieldsToTab('Root.Story', array (
			TextField::create('StoryTitle'),
			TextField::create('StorySubheading'),
			TextAreaField::create('StoryContent'),
			$upload = UploadField::create('StoryImage')
		));

		$upload->getValidator()->setAllowedExtensions(array(
			'png', 'jpeg', 'jpg', 'gif'
		));
		$upload->setFolderName('homepage-story');
		
		return $fields;
	}

}

class HomePage_Controller extends Page_Controller{


}