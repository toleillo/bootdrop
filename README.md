Bootdrop
========
Bootdrop 8.x-dev contains scripts using drush to clone Drupal 8.x-dev and install it.

Bootdrop builds a new Drupal 8 installation at a "drupal" folder and links the drupal/sites/default/files to the "shared" folder. Then you can configure and install it to start developing.

Installation
------------
1. Build Drupal core:
   ```bash
   bin/build
   ```

2. Edit shared/settings.local.php with your local database configuration.

3. Install Drupal:
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
