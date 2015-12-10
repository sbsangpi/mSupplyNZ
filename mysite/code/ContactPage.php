<?php

class ContactPage extends Page {
	public function getCMSFields(){

		$fields = parent::getCMSFields();
		$fields->removeByName('Content');
		$fields->removeByName('Metadata');
		return $fields;
	}
}

class ContactPage_Controller extends Page_Controller {

	private static $allowed_actions = array (
		'ContactForm'
	);
	
	public function ContactForm(){
		$form = BootstrapForm::create(
			$this,
			__FUNCTION__,
			FieldList::create(
				TextField::create('FullName','Full Name'),
				TextField::create('Phone','Phone Number'),
				TextField::create('Email','Email Address'),
				TextAreaField::create('Message','Message')
			),
			Fieldlist::create(
				FormAction::create('sendContactForm', 'Send Message')
						->addExtraClass('square-btn')
			)
		);
		return $form;
	}

	public function sendContactForm($data, $form){
		$email = new Email();
		$email
		    ->setFrom('"mSupply Contact Form" <mSupply@mail.yakpost.org>')
		    ->setTo($this->SiteConfig()->ContactFormEmail)
		    ->setSubject('mSupply Message')
		    ->setTemplate('ContactFormEmail')
		    ->populateTemplate(new ArrayData(array(
		        'FullName' => $data['FullName'],
		        'Phone' =>  $data['Phone'],
		        'Email' =>  $data['Email'],
		        'Message' =>  $data['Message'],
		    )));

		$email->send();

		return $this->redirectback();
	}
}