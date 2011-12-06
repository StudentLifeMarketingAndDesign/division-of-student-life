<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => 'root',
	"database" => 'studentlife',
	"path" => '',
);

MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('doss');

// Set the site locale
i18n::set_locale('en_US');

// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();
Director::set_environment_type("live");
FulltextSearchable::enable();

Requirements::block('jsparty/prototype.js'); 

RecaptchaField::$public_api_key = '6LfEpsQSAAAAAHq26XZkxL4tQq-ic44JE0kTXnP3';
RecaptchaField::$private_api_key = '6LfEpsQSAAAAAIN3mAwChfzQFLlfAkM4NatP8Klq';
SpamProtectorManager::set_spam_protector("RecaptchaProtector");
SortableDataObject::add_sortable_class('SidebarImage');