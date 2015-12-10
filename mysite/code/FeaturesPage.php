<?php

class FeaturesPage extends Page {

	private static $has_one = array (
		'Photo' => 'Image'
	);

	private static $has_many = array (
		'Features' => 'Feature'
	);

	private static $can_be_root = false;

	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->addFieldToTab( 'Root.Features', GridField::create(
			'Features',
			'Features on this page',
			$this->Features(),
			GridFieldConfig_RecordEditor::create()
		));

		$fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));
		
		$photo->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpg', 'jpeg'));
		$photo->setFolderName('feature-page-photos');

		return $fields;
	}


	public function LatestFeatures($PageID){
		
		return Feature::get()->filter(array(
				'FeaturesPageID' => $PageID
			))
			->sort('Created', 'ASC');

	}
}

class FeaturesPage_Controller extends Page_Controller {
	
	

}