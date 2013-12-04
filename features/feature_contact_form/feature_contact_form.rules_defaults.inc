<?php
/**
 * @file
 * feature_contact_form.rules_defaults.inc
 */

/**
 * Implements hook_default_rules_configuration().
 */
function feature_contact_form_default_rules_configuration() {
  $items = array();
  $items['rules_contact_form_submission'] = entity_import('rules_config', '{ "rules_contact_form_submission" : {
      "LABEL" : "Contact form submission",
      "PLUGIN" : "rule",
      "OWNER" : "rules",
      "TAGS" : [ "entity_rules_entityform_submission" ],
      "REQUIRES" : [ "rules" ],
      "USES VARIABLES" : {
        "entity" : { "label" : "Entity", "type" : "entityform" },
        "continue" : { "label" : "Continue Rules", "type" : "boolean" }
      },
      "DO" : [
        { "mail" : {
            "to" : "[site:mail]",
            "subject" : "Contact form submission from [entity:field_contact_name]",
            "message" : "[entity:field_contact_message]",
            "from" : "[entity:field_contact_email]",
            "language" : [ "site:current-user:language" ]
          }
        }
      ],
      "PROVIDES VARIABLES" : [ "continue" ]
    }
  }');
  return $items;
}
