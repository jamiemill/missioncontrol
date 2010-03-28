# MissionControl

This work-in-progress CMS has evolved gradually and somewhat inconsistently out of many of my projects from the last couple of years, and until now was never packaged up as a whole. It is not production-ready in this form and hasn't undergone much testing, so please be wary! It's intended for people with an intimate knowledge of CakePHP and will not make a lot of sense to others yet.

There is a more elegant, wordpressy CakePHP CMS called [Croogo](http://www.croogo.org/) which looks better in many ways than this, so you might want to look there instead...

## Raison d'être

The main idea behind MissionControl is to be as flexible as possible, to allow building many different types of websites and web applications on top, using all the benefits that CakePHP brings.

It is not a blog – heck, it is not *even* a blog (yet). It is designed to be fairly client- and designer-friendly and one important step towards this goal is the idea of "content areas" where each page template can have arbitrary areas marked as editable by the designer/developer. I had planned to include a visual in-place editing mode where these content areas are editable in context if desired, but this has not materialised yet.

Each "content area" can have many "blocks" inserted into it. At the moment these blocks always contain rich text edited with TinyMCE, but the eventual goal is to allow different types of blocks to be inserted that could be provided by other plugins, e.g. "form" blocks, "image gallery" blocks etc.

At the moment it is not really under active development but I'd like to offer this to the world to see if anyone can build on it.


## Requirements

This directory is just a standard CakePHP 'app' directory, with a few extras. It requires (and must be able to find):

- the core CakePHP 1.3 `cake` directory. If you replace a standard cake `app` directory with this, then it should find it fine. Otherwise you may need to edit the `CAKE_CORE_INCLUDE_PATH` inside `webroot/index/php`.
- the [MissionControl core plugin](http://github.com/jamiemill/missioncontrol_core)
- the [MissionControl users plugin](http://github.com/jamiemill/missioncontrol_users)
- the DebugKit plugin
- the AclExtras plugin

## Installation

There is no automatic installer yet I'm afraid. Instead, please follow these steps:

1. Clone this project:
	
	`git clone git://github.com/jamiemill/missioncontrol.git yourdirectory`

2. Make sure cake's core `cake` directory is sitting alongside it.

3. Pull in the necessary submodules:
	
	`git submodule init && git submodule update`

	This will initialise the following submodules:
	
	- `missioncontrol_plugins/core [git://github.com/jamiemill/missioncontrol_core.git]`
	- `missioncontrol_plugins/users [git://github.com/jamiemill/missioncontrol_users.git]`
	- `missioncontrol_plugins/file_library [git://github.com/jamiemill/missioncontrol_file_library.git]`
	- `missioncontrol_plugins/news [git://github.com/jamiemill/missioncontrol_news.git]`
	- `plugins/acl_extras [git://github.com/markstory/acl_extras.git]`
	- `plugins/debug_kit [git://github.com/cakephp/debug_kit.git]`
	
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
	
		user: admin@example.com
		password: password
		
	Obviously these *must* be changed!
	
10. You should also change the `Security.salt` and `Security.cipherSeed` values inside `config/core.php` but this will invalidate your password, so please do this *after* you add your own administrator account with a valid email so that you can reset your password via the forgotten password procedure.
	
## More

Please see the core readme inside `missioncontrol/plugins/core/`
