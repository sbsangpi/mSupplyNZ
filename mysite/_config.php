<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	'type' => 'MySQLDatabase',
	'server' => 'localhost',
	'username' => 'msupplyn_admin',
	'password' => 'admin1234',
	'database' => 'msupplyn_SS_msupply',
	'path' => ''
);

// Set the site locale
i18n::set_locale('en_US');

// ===================================================
// TINY MCE CONFIGURATION
// ===================================================
HtmlEditorConfig::get('cms')->setOptions(array(
	'height' => '250'
));

HtmlEditorConfig::get('cms')->setButtonsForLine(1, 'bold', 'italic', 'underline', 'separator', 'bullist', 'numlist','separator',  'styleselect', 'formatselect', 'anchor', 'code');
HtmlEditorConfig::get('cms')->setButtonsForLine(2, '');

// ===================================================
// SHORT CODES
// ===================================================
ShortcodeParser::get('default')->register('Button', array('Page', 'ButtonShortCodeHandler'));