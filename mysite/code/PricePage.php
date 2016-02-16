<?php

class PricePage extends Page
{
	private static $has_many = array(
		'Prices' => 'Price'
	);

	private static $can_be_root = false;

	public function getCMSFields()
	{
		$fields = parent::getCMSFields();

		$fields->addFieldToTab( 'Root.Prices', GridField::create(
			'Prices',
			'Prices on this page',
			$this->Prices(),
			GridFieldConfig_RecordEditor::create()
		));
		return $fields;
	}
}

class PricePage_Controller extends Page_Controller
{	
	public function Prices($PricePageID)
	{	
		return Price::get()->filter(array(
				'PricePageID' => $PageID
			))
			->sort('Created', 'ASC');
	}
}