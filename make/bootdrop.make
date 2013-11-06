; Core version
core = 7.x

; Drush Make API version
api = 2

; Core project
; ------------
projects[drupal][type] = "core"
projects[drupal][version] = 7.23
; Ensure plain text fields evaluate line breaks.
projects[drupal][patch][] = "http://drupal.org/files/text-plain-1152216-24.patch"
; Resolve php notice thrown by the way PHP 5.4 handles array indexes vs 5.3. https://drupal.org/node/1824820#comment-6656728
projects[drupal][patch][] = "https://drupal.org/files/string-offset-cast-1824820-2.patch"

; Set contrib directory.
defaults[projects][subdir] = "contrib"

; Base installation profile
includes[base] = "base.make"

; Development
;includes[development] = "development.make"

; Theme
includes[theming] = "theming.make"

; Images
includes[images] = "images.make"

; Multilingual
;includes[i18n] = "i18n.make"

; Commerce
;includes[commerce] = "commerce.make"



