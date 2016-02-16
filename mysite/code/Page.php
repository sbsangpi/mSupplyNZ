<?php
class Page extends SiteTree
{
	private static $db = array(
		'AdminTags' => 'Text'
	);

	public function ButtonShortCodeHandler($arguments, $content = null, $parser = null, $tagName){

		$link = $arguments['href'];

		return "<button href=".$link." class='btn btn-primary'>".
			$content
			."</button>";
	}
}


class Page_Controller extends ContentController
{

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array(
		'NewsletterForm'
	);

	public function init()
	{
		parent::init();
		
		// CSS Requirements
		Requirements::css("https://fonts.googleapis.com/css?family=Roboto:300,400,500,700");
		Requirements::css("{$this->ThemeDir()}/font-awesome/css/font-awesome.min.css");
		Requirements::css("{$this->ThemeDir()}/css/main.min.css");

		// Javascript Requirements
	    Requirements::javascript("{$this->ThemeDir()}/js/jquery.js");
	    Requirements::javascript("{$this->ThemeDir()}/js/bootstrap.min.js");
	    Requirements::javascript("{$this->ThemeDir()}/js/jquery.easing.min.js");
	    Requirements::javascript("{$this->ThemeDir()}/js/custom.js");
	}

	// Get the features page to display on the homepage
	public function FeaturePages()
	{
		return FeaturesPage::get()
				->sort('Created', 'ASC');
	}

	// Get the latest news / blog posts
	public function LatestNews($count)
	{
		return BlogPage::get()
				->filter('ParentID','18')
				->sort('Created', 'ASC')
				->limit($count);
	}
	
	public function NewsletterForm()
	{
		$form = BootstrapForm::create(
			$this,
			__FUNCTION__,
			FieldList::create(
				EmailField::create('Email','')
					->setAttribute('placeholder', 'Email Address')
			),
			Fieldlist::create(
				FormAction::create('sendNewsletterForm', 'Sign Up')
						->setStyle('primary')
			)
		)
		->setLayout('inline');

		return $form;
	}

	// Newsletter Sign Up Form
	public function SendNewsletterForm($data, $form)
	{
		$email = new Email();
		$email
		    ->setFrom('"mSupply Newsletter Form" <mSupply@mail.yakpost.org>')
		    ->setTo($this->SiteConfig()->NewsletterFormEmail)
		    ->setSubject('mSupply Newsletter Request')
		    ->setTemplate('NewsletterSignUpEmail')
		    ->populateTemplate(new ArrayData(array(
		        'Email' =>  $data['Email']
		    )));

		$email->send();

		return $this->redirectback();
	}
}
