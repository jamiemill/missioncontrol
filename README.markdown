# MissionControl

MissionControl is a simple CMS built on the [CakePHP](http://cakephp.org) framework version 1.3.

This work-in-progress CMS has evolved gradually and somewhat inconsistently out of many of my projects from the last couple of years, and until now was never packaged up as a whole. It is not production-ready in this form and hasn't undergone much testing, so please be wary! It's intended for developers with a good knowledge of CakePHP and will not make a lot of sense to others yet.

There is a more elegant, wordpressy CakePHP CMS called [Croogo](http://www.croogo.org/) which looks better in many ways than this, so you might want to look there instead...

## Raison d'être

The main idea behind MissionControl is to be as flexible as possible, to allow building many different types of websites and web applications on top, using all the benefits that CakePHP brings.

It is not a blog – heck, it is not *even* a blog (yet). It is designed to be fairly client- and designer-friendly and one important step towards this goal is the idea of "content areas" where each page template can have arbitrary areas marked as editable by the designer/developer. I had planned to include a visual in-place editing mode where these content areas are editable in context if desired, but this has not materialised yet.

Each "content area" can have many "blocks" inserted into it. At the moment these blocks always contain HTML edited with TinyMCE, but the eventual goal is to allow different types of blocks to be inserted that could be provided by other plugins, e.g. "form" blocks, "image gallery" blocks etc.

At the moment it is not really under active development but I'd like to offer this to the world to see if anyone can build on it.

## Requirements

*	HTTP Server. Tested with Apache 1.2
*	Mod-rewrite configured via .htaccess files in `webroot` and the root application directory if the docroot is pointed there instead of `webroot`. See [here](http://book.cakephp.org/view/37/Apache-and-mod_rewrite-and-htaccess) for info.
*	PHP 4.3.2+. Tested on PHP 5 so not sure how compatible it is with 4.
*	MySQL 4+
*	Make sure the `tmp` and `webroot/files` directories are writable
*	The core CakePHP v1.3 `cake` directory which should be placed alongside this directory. If placed elsewhere, the `CAKE_CORE_INCLUDE_PATH` inside `webroot/index.php` file must be updated to point at the new location.
*	tinymce in the webroot
*	PHP-GD image library
*	For the developer only: Console access to the `cake` command, for managing access-control and fixtures. See [here for help setting this up](http://book.cakephp.org/view/108/The-CakePHP-Console).

This directory is just a standard CakePHP 'app' directory, with a few extras. It requires (and must be able to find):

- the [MissionControl core plugin](http://github.com/jamiemill/missioncontrol_core)
- the [MissionControl users plugin](http://github.com/jamiemill/missioncontrol_users)
- the DebugKit plugin
- the AclExtras plugin

## Installation

There is no automatic installer yet I'm afraid. Instead, please follow these steps:

1. Clone this project:
	
	`git clone git://github.com/jamiemill/missioncontrol.git your_new_site_directory`

2. Make sure cake's core `cake` directory (or a symlink) is sitting alongside it.

3. Pull in the necessary submodules:
	
	`cd your_new_site_directory && git submodule init && git submodule update`

	This will initialise the following submodules:
	
		plugins/core         [git://github.com/jamiemill/missioncontrol_core.git]
		plugins/users        [git://github.com/jamiemill/missioncontrol_users.git]
		plugins/file_library [git://github.com/jamiemill/missioncontrol_file_library.git]
		plugins/news         [git://github.com/jamiemill/missioncontrol_news.git]
		plugins/acl_extras   [git://github.com/markstory/acl_extras.git]
		plugins/debug_kit    [git://github.com/cakephp/debug_kit.git]
	
4. Fetch a copy of the [TinyMCE jQuery package](http://tinymce.moxiecode.com/download.php) and drop the `tiny_mce` subfolder inside `webroot/js/`

5. Create a database and remember the name and connection settings

6. Duplicate `config/database.php.default` as `config/database.php` and populate it with your database settings

7. Import the SQL dump from `config/schema/install.sql`

8. Make sure the `tmp` directory and all contents are writable by the webserver

9. Make sure `webroot/files` is writable by the webserver

8. You should now be able to browse to the site and see a rather mundane homepage saying:

		This is uneditable text in the home page template.
		here's some dynamic content!
		
9. You can log in at `/admin/` to get to the CMS itself.
	
		email:    admin@example.com
		password: password
		
	Obviously these *must* be changed!
	
10. You should also change the `Security.salt` and `Security.cipherSeed` values inside `config/core.php` but this will invalidate your password, so please do this *after* you add your own administrator account with a valid email so that you can reset your password via the forgotten password procedure. (_NOTE: CURRENTLY EMAIL SENDING IS PROBABLY NOT WORKING SO YOU ARE ON YOUR OWN HERE FOR NOW_)


## Directory Structure

All of MissionControl's functionality is packaged as a suite of CakePHP "plugins", stored in the usual `plugins` directory.

Plugin view files can be overidden on a site-by-site basis by duplicating a file into `{APP}/views/plugins/{plugin_name}/`.

Any site-specific logic would usually be manifested in the creation of new models/views/controllers outside the plugin directories in the usual CakePHP way.

Administrative pages are found via the `/admin/` route prefix. This does not correspond to a directory, it's a special routing set up in the configuration of this site.


## Bootstrap

The site's root `config/bootstrap.php` file contains some essential logic and configuration necessary for tying everything together. (TODO: explain more)

Each plugin contains a `config/routes.php` file which defines extra routes specific to that plugin.


## More

Please see the core readme inside [the core plugin](http://github.com/jamiemill/missioncontrol_core) for information about how it actually works and how to build on it.
