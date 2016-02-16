<?php

class AboutPage extends Page 
{

	private static $db = array(
		'Subheading' => 'Varchar'
	);

	private static $has_many = array(
		'Profiles' => 'Profile'
	);

	public function getCMSFields()
	{
		$fields = parent::getCMSFields();

		$fields->addFieldToTab( 'Root.Profiles', GridField::create(
			'Profiles',
			'Profiles on this page',
			$this->Profiles(),
			GridFieldConfig_RecordEditor::create()
		));

		
		$fields->addFieldToTab('Root.Main', TextField::create('Subheading', 'Page Subheading'), 'Content');
		
		return $fields;
	}
}

class AboutPage_Controller extends Page_Controller 
{
	
	
}