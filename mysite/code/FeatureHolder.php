<?php

class FeatureHolder extends Page {

	private static $db = array(
		'Subheading' => 'Varchar'
	);

	private static $allowed_children = array (
		'FeaturesPage'
	);

	public function getCMSFields(){

		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Main', TextField::create('Subheading', 'Page Subheading'), 'Content');
		
		return $fields;
	}
}

class FeatureHolder_Controller extends Page_Controller {


	public function TabNumber(){

		$param = $this->getRequest()->getVar('tab');

		// Remove the trailing backslash
		$param = substr($param, 0, 1);
		$param = (int)$param;

		if ($param == 0){
			return 1;
		} else {
			return $param;
		}
	}
}