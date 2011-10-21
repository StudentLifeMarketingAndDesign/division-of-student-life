<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'koko.imu.uiowa.edu',
	"username" => 'pickone',
	"password" => 'Tr6Bra7r',
	"database" => 'pickone',
	"path" => '',
);

MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('pickone');

// Set the site locale
i18n::set_locale('en_US');

// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();
Object::add_extension("SiteTree", "FilesystemPublisher('html/', 'html')");
StaticPublisher::set_static_publisher_theme('rawhtml');
