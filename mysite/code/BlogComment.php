<?php 

class BlogComment extends DataObject {
	
	private static $db = array (
		'Name' => 'Varchar',
		'Comment' => 'Text'
	);

	private static $has_one = array (
		'BlogPage' => 'BlogPage'
	);

	
}