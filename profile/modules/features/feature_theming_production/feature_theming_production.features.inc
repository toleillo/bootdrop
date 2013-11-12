<?php
/**
 * @file
 * feature_theming_production.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function feature_theming_production_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}
