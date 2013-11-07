Bootdrop
========
Bootdrop contains a Drupal profile and scripts using drush to start developing common Drupal 7 projects.nnn

Preconfiguration
----------------
1. Edit profile/bootdrop.make and comment or uncomment to include extra sets of modules.
2. Edit profile/bootdrop.info and comment or uncomment to enable the corresponding extra features.

Installation
------------
1. Build Drupal core and Bootdrop profile:
   ```bash
   bin/build
   ```

2. Edit shared/settings.local.php with your local database configuration.

3. Install Drupal with Bootdrop profile:
   ```bash
   bin/install
   ```

Post-installation
-----------------
1. Adjust permissions on drupal and shared folders.
2. Create a virtual directory pointing to drupal folder.
3. You can visit your site and go to /user/login entering "admin" and "password".

Updating
--------
To add or update a module, theme, etc., you just need to modify the corresponding .make file. If your are adding a module, you should include it as a dependency into a feature, and that feature should be also included in the Feature Controller. Then execute the following command to install or update them.
```bash
bin/update
```
This will rebuild the profile, revert the features so dependencies can be installed, update the database and clear all caches.

If you want to remove some module, you will need to disable and uninstall it first, then edit the .make file and finally run the `bin/update` command to delete the folder (or manually remove it).