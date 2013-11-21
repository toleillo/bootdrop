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
bin/build-install
```

These scripts must be executed always from the root project folder, using 'bin/' followed by the script name.

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

There are some features that only should be enabled either in development or in production environments. The install and update scripts enable development features by default (internally executing `bin/enable-dev`), but you can also update enabling the production features:
```bash
bin/update-prod
```

Multilingual
------------
Multilingual is one of the features available (feature\_multilingual) in the features directory. To add this feature as with any other you just have to copy it in your profile/modules/features/ folder, and link it as a dependency in feature\_controller.info.

Multilingual feature begins with English as the only language component and as the default language. Bootdrop provides scripts in the bin/languages folder, which help you adding and enabling new languages, and setting one by default, updating feature_multilingual.

1. Add and enable a new language (e.g. Spanish):
   ```bash
   bin/languages/add es
   ```

2. Set default language (e.g. Spanish):
   ```bash
   bin/languages/default es
   ```

3. Download and update translations (this will take a while...):
   ```bash
   bin/languages/update
   ```

You must have feature\_multilingual installed (which include required locale and l10n\_update) before executing these commands. The scripts also use Drush Language Commands project (drush_language), auto-downloading it first in case it's necessary.
