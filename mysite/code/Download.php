<?php

class Download extends DataObject
{

	private static $db = array (
		'Title' => 'Varchar',
		'Description' => 'HTMLText'
	);

	private static $can_be_root = false;
	
	private static $has_one = array(
		'DownloadTab' => 'DownloadTab',
		'DownloadFile' => 'File'
	);

	private static $summary_fields = array(
		'Title' => 'Title'
	);

	public function getCMSFields()
	{

		$fields = FieldList::create(TabSet::create('Root'));

		$fields->addFieldsToTab('Root.Main', array (
			TextField::create('Title'),
			HTMLEditorField::create('Description'),
			$upload = UploadField::create('DownloadFile', 'Download File')
		));

		$upload->setFolderName('downloads');

		return $fields;
	}

}
