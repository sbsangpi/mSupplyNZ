<?php

class PageHolder extends Page {

	private static $db = array(
		'Factheading' => 'Varchar',
		'Fact' => 'text'
	);

	private static $allowed_children = array (
		'BlogPage',
		'CustomerPage'
	);

	public function getCMSFields(){

		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Main', TextField::create('Factheading', 'Fact heading'), 'Content');
		$fields->addFieldToTab('Root.Main', TextAreaField::create('Fact', 'Fun Fact'), 'Content');
		
		return $fields;
	}
}

class PageHolder_Controller extends Page_Controller {

	public function PaginatedChildren() {
		$pages = new PaginatedList($this->Children(), $this->request);
		$pages->setPageLength(3);
		return $pages;
	}

	
}