<?php
/**
 * @file
 * feature_theming_development.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function feature_theming_development_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}
