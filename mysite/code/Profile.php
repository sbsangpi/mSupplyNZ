<?php

class Profile extends DataObject
{
	private static $db = array (
		'Name' => 'Varchar',
		'Job' => 'Varchar',
		'Description' => 'Text'
	);

	private static $has_one = array (
		'Photo' => 'Image',
		'AboutPage' => 'AboutPage'
	);

	private static $summary_fields = array (
		'Photo.CMSThumbnail' => '',
		'Name' => 'Name',
		'Job' => 'Job',
		'Description' => 'Desciption'
	);

	public function getCMSFields()
	{
		$fields = FieldList::create(
			TextField::create('Name'),
			TextField::create('Job'),
			TextAreaField::create('Description'),
			$uploader = UploadField::create('Photo')
		);

		$uploader->setFolderName('profile-pictures');
		$uploader->getValidator()->setAllowedExtensions(array(
			'png', 'gif', 'jpeg', 'jpg'
		));


		return $fields;
	}
}
