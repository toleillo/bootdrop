<?php
/**
 * @file
 * feature_production_theming.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function feature_production_theming_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}
