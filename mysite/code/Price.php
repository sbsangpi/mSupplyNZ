<?php

class Price extends DataObject{

	private static $db = array (
		'Description' => 'Varchar(100)',
		'Price' => 'Varchar'
	);
	private static $has_one = array (
		'PricePage' => 'PricePage'
	);

	private static $summary_fields = array (
		'Description' => 'Description',
		'Price' => 'Price'
	);

	public function getCMSFields(){

		$fields = FieldList::create(
			TextField::create('Description'),
			TextField::create('Price')
		);

		return $fields;
	}

}
