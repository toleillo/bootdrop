; Core version
core = 7.x

; Drush Make API version
api = 2

; Set contrib directory.
defaults[projects][subdir] = "contrib"

; Features
projects[features][version] = 2.0
projects[features][type] = "module"

; Include auto-generated features.make
; ------------------------------------
includes[features] = "features.make"

; Themes and theming modules and libraries
; ----------------------------------------
; Shiny as admin theme
projects[shiny][version] = 1.4
projects[mothership][type] = "theme"

; Mothership as custom base theme
projects[mothership][version] = 2.10
projects[mothership][type] = "theme"