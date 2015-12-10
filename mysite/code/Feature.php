<?php

class Feature extends DataObject{

	private static $db = array (
		'Title' => 'Varchar',
		'Teaser' => 'Varchar(100)',
		'Description' => 'Text'
	);
	private static $has_one = array (
		'Icon' => 'Image',
		'FeaturesPage' => 'FeaturesPage'
	);

	private static $summary_fields = array (
		'Icon.CMSThumbnail' => '',
		'Title' => 'Title of feature',
		'Teaser' => 'Teaser',
		'Description' => 'Desciption'
	);

	public function getCMSFields(){

		$fields = FieldList::create(
			TextField::create('Title'),
			TextField::create('Teaser'),
			TextAreaField::create('Description'),
			$uploader = UploadField::create('Icon')
		);

		$uploader->setFolderName('feature-icons');
		$uploader->getValidator()->setAllowedExtensions(array(
			'png', 'gif', 'jpeg', 'jpg', 'svg'
		));


		return $fields;
	}

}
