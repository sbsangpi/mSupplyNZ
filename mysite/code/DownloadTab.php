<?php

class DownloadTab extends Page
{

	private static $has_one = array(
		'DownloadsPage' => 'DownloadsPage'
	);

	private static $allowed_children = array(
		'Download'
	);

	private static $has_many = array(
		'Downloads' => 'Download'
	);

	private static $can_be_root = false;

	public function getCMSFields()
	{
		$fields = parent::getCMSFields();
		$fields->removeByName('Content');
		$fields->removeByName('Metadata');

		$fields->addFieldsToTab('Root.Main', array (
			GridField::create(
				'Downloads',
				'Downloads On This Page',
				$this->Downloads(),
				GridFieldConfig_RecordEditor::create()
			)
		));
		return $fields;
	}
}

class DownloadTab_Controller extends Page_Controller
{

}