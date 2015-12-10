<?php

class SiteConfigExtension extends DataExtension {


	private static $db = array(
		'mSupplyEmail' => 'Varchar',
		'mSupplyNZPhone' => 'Varchar',
		'ContactFormEmail' => 'Varchar',
		'NewsletterFormEmail' => 'Varchar'
	);

	public function updateCMSFields(Fieldlist $fields){
		$fields->addFieldsToTab('Root.Main', array(
			TextField::create('mSupplyEmail', 'mSupply Contact Email'),
			TextField::create('mSupplyNZPhone', 'mSupply NZ Contact Phone'),
			TextField::create('ContactFormEmail', 'Email For Contact Form'),
			TextField::create('NewsletterFormEmail', 'Email For Newsletter Sign Ups')
		));
	}
}