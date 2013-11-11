; Core version
core = 7.x

; Drush Make API version
api = 2

; Set contrib directory.
defaults[projects][subdir] = "contrib"

; Include auto-generated features.make
; ------------------------------------
includes[features] = "features.make"

; Base modules for every common drupal project
; --------------------------------------------
; Chaos tool suite (ctools)
projects[ctools][version] = 1.3
projects[ctools][type] = "module"

; Features
projects[features][version] = 2.0
projects[features][type] = "module"

; Strongarm
projects[strongarm][version] = 2.0
projects[strongarm][type] = "module"

; Views
projects[views][version] = 3.7
projects[views][type] = "module"

; Token
projects[token][version] = "1.5"
projects[token][type] = "module"

; Pathauto
projects[pathauto][version] = 1.2
projects[pathauto][type] = "module"

; Context
projects[context][version] = 3.1
projects[context][type] = "module"

; Entity API
projects[entity][version] = 1.2
projects[entity][type] = "module"

; Rules
projects[rules][version] = 2.6
projects[rules][type] = "module"

; Nodequeue
projects[nodequeue][version] = 2.0-beta1
projects[nodequeue][type] = "module"


; Themes and theming modules and libraries
; ----------------------------------------
; Mothership
projects[mothership][version] = 2.10
projects[mothership][type] = "theme"