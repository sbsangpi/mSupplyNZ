<?php

class Package extends DataObject
{
	private static $db = array (
		'Title' => 'Varchar',
		'Price' => 'Varchar',
		'Description' => 'Varchar(100)',
		'Item1' => 'Varchar(100)',
		'Item2' => 'Varchar(100)',
		'Item3' => 'Varchar(100)',
		'Item4' => 'Varchar(100)'
	);

	private static $has_one = array (
		'PriceHolder' => 'PriceHolder'
	);

	private static $summary_fields = array (
		'Title' => 'Title',
		'Price' => 'Price',
		'Description' => 'Desciption'
	);

	public function getCMSFields()
	{
		$fields = FieldList::create(
			TextField::create('Title'),
			TextField::create('Price'),
			TextField::create('Description'),
			TextField::create('Item1'),
			TextField::create('Item2'),
			TextField::create('Item3'),
			TextField::create('Item4')
		);
		return $fields;
	}
}
