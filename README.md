Bootdrop
========
Bootdrop contains a Drupal profile and scripts to start developing common Drupal 7 projects

Preconfiguration
----------------
1. Edit make/bootdrop.make and comment or uncomment to include extra sets of modules.
2. Edit profile/bootdrop.info and comment or uncomment to enable the corresponding extra features.

Installation
------------
1. $ bin/make
2. Edit shared/settings.local.php with your local database configuration.
3. $ bin/install
4. Create a virtual directory pointing to drupal folder.
5. You can visit your site and go to /user/login entering "admin" and "password".