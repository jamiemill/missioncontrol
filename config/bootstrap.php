<?php
/**
 * This file is loaded automatically by the app/webroot/index.php file after the core bootstrap.php
 *
 * This is an application wide file to load any function that is not used within a class
 * define. You can also use this to include or require any files in your application.
 *
 * PHP versions 4 and 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2010, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2010, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       cake
 * @subpackage    cake.app.config
 * @since         CakePHP(tm) v 0.10.8.2117
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

/**
 * The settings below can be used to set additional paths to models, views and controllers.
 * This is related to Ticket #470 (https://trac.cakephp.org/ticket/470)
 *
 * App::build(array(
 *     'plugins' => array('/full/path/to/plugins/', '/next/full/path/to/plugins/'),
 *     'models' =>  array('/full/path/to/models/', '/next/full/path/to/models/'),
 *     'views' => array('/full/path/to/views/', '/next/full/path/to/views/'),
 *     'controllers' => array('/full/path/to/controllers/', '/next/full/path/to/controllers/'),
 *     'datasources' => array('/full/path/to/datasources/', '/next/full/path/to/datasources/'),
 *     'behaviors' => array('/full/path/to/behaviors/', '/next/full/path/to/behaviors/'),
 *     'components' => array('/full/path/to/components/', '/next/full/path/to/components/'),
 *     'helpers' => array('/full/path/to/helpers/', '/next/full/path/to/helpers/'),
 *     'vendors' => array('/full/path/to/vendors/', '/next/full/path/to/vendors/'),
 *     'shells' => array('/full/path/to/shells/', '/next/full/path/to/shells/'),
 *     'locales' => array('/full/path/to/locale/', '/next/full/path/to/locale/')
 * ));
 *
 */

/**
 * As of 1.3, additional rules for the inflector are added below
 *
 * Inflector::rules('singular', array('rules' => array(), 'irregular' => array(), 'uninflected' => array()));
 * Inflector::rules('plural', array('rules' => array(), 'irregular' => array(), 'uninflected' => array()));
 *
 */


/**
 * MissionControl Configuration
 * 
 * Note that the bootstrap.core.php file does some configuration that all MissionControl sites need,
 * including defining an extra path to search for 'plugins' like so:
 * App::build(array(
 * 	'plugins' => array(APP . 'missioncontrol_plugins' . DS)
 * ));
 * 
 * This might override your use of App::build above so please check and ensure the two coexist nicely.
 *
 */

require_once(APP.'missioncontrol_plugins'.DS.'core'.DS.'config'.DS.'bootstrap.core.php');

Configure::write('Site.title', 'MissionControl Demo Site');
Configure::write('Site.emailsTo','info@example.com');
Configure::write('Site.allowPageParentContent', null); 									
Configure::write('Site.extraThumbnailSizes', array(
	'thumbnail'=>array(200,200,1,'C'),
	'homepage'=>array(450,450,1,'C')
));

Configure::write('Robot.fromAddress', 'Missioncontrol Demo Site <info@example.com>');
Configure::write('Robot.SMTP.port',null);
Configure::write('Robot.SMTP.type',null);
Configure::write('Robot.SMTP.host','xxx.xxx.xxx');
Configure::write('Robot.SMTP.username','xxx@xxx.xxx');
Configure::write('Robot.SMTP.password','xxx');
Configure::write('SwiftEmail.debug',true);

Configure::write('User.Register.redirect',false);
Configure::write('User.Login.fallbackRedirect','/admin/');
Configure::write('User.SiteHasFrontendLogin',false);


/**
* Pick one of these three constants to define what happens when a user registers at the site:
* 
* 'USER_REGISTER_ACTIVATION_IMMEDIATE'
* 'USER_REGISTER_ACTIVATION_SELF_ACTIVATE'
* 'USER_REGISTER_ACTIVATION_ADMIN_NOTIFY'
*/

Configure::write('User.Register.activation',USER_REGISTER_ACTIVATION_ADMIN_NOTIFY);


?>