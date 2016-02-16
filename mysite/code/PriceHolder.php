<?php

class PriceHolder extends Page
{
	private static $has_many = array (
		'Packages' => 'Package',
		'PricePages' => 'PricePage'
	);

	private static $allowed_children = array (
		'PricePage'
	);
	
	private static $db = array(
		'Subheading' => 'Varchar'
	);

	public function getCMSFields()
	{
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', TextField::create('Subheading', 'Page Subheading'), 'Content');

		$fields->addFieldToTab( 'Root.Packages', GridField::create(
			'Packages',
			'Packages On This Page',
			$this->Packages(),
			GridFieldConfig_RecordEditor::create()
		));
		
		return $fields;
	}
}

class PriceHolder_Controller extends Page_Controller
{
	public function PricePages()
	{
		return PricePage::get()
			->sort('Created', 'ASC');
	}
}