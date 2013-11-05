Bootdrop
========
Bootdrop contains a Drupal profile and scripts using drush to start developing common Drupal 7 projects.nnn


Preconfiguration
----------------
1. Edit make/bootdrop.make and comment or uncomment to include extra sets of modules.
2. Edit profile/bootdrop.info and comment or uncomment to enable the corresponding extra features.

Installation
------------
1. $ bin/make
2. Edit shared/settings.local.php with your local database configuration.
3. $ bin/install

Post-installation
-----------------
1. Adjust permissions on drupal and shared folders.
2. Create a virtual directory pointing to drupal folder.
3. You can visit your site and go to /user/login entering "admin" and "password".