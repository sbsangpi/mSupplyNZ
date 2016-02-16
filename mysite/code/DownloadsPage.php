<?php

class DownloadsPage extends Page
{

	private static $has_many = array(
		'DownloadTabs' => 'DownloadTab'
	);

	private static $allowed_children = array(
		'DownloadTab'
	);
	
	private static $db = array(
		'Subheading' => 'Varchar'
	);

	public function getCMSFields()
	{

		$fields = parent::getCMSFields();
		$fields->removeByName('Content');
		$fields->removeByName('Metadata');

		$fields->addFieldsToTab('Root.Main', array (
			TextField::create('Subheading', 'Page Subheading')
		));
		
		return $fields;
	}
}

class DownloadsPage_Controller extends Page_Controller
{

}