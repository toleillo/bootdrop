Bootdrop
========
Bootdrop contains a Drupal profile and scripts using drush to start developing common Drupal 7 projects.

Bootdrop builds a new Drupal 7 installation at a "drupal" folder, links the drupal/sites/default/files to the "shared" folder, and links drupal/profiles/bootdrop to the "profile" folder. Then you can configure and install it from the Bootdrop profile and start developing, adding or updating modules or features when needed.

Configuration
----------------
1. Edit profile/bootdrop.make to include extra modules and profile/bootdrop.info to enable them as dependencies.
2. Copy the features you need from features folder into profile/modules/features and edit profile/modules/features/feature_controller.info to enable them as dependencies.

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

Alternatively if you have already created and configured shared/settings.local.php you can just execute:
   ```bash
   bin/build_install
   ```

Post-installation
-----------------
1. Adjust permissions on drupal and shared folders.
2. Create a virtual directory pointing to drupal folder.
3. You can visit your site and go to /user/login entering "admin" and "password".

Updating
--------
To add or update a module, theme, etc., you just need to modify the corresponding .make file. If your are adding a module, you should include it as a dependency into a feature (with a *feature_name*.make file), and that feature should be also included in the Feature Controller. Then execute the following command to install or update them.
```bash
bin/update
```
This will rebuild the profile, revert the features so dependencies can be installed, update the database and clear all caches.

If you want to remove some module, you will need to disable and uninstall it first, then edit the .make file and finally run the `bin/update` command to delete the folder (or manually remove it).
