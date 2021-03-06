<?php
/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function aizen_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = 'Bankai';
  $form['site_information']['site_mail']['#default_value'] = 'admin@example.com';
  $form['admin_account']['account']['name']['#default_value'] = 'admin';
  $form['admin_account']['account']['mail']['#default_value'] = 'admin@example.com';
  $form['server_settings']['site_default_country']['#default_value'] = 'GB';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'Europe/London';
}

/**
 * Implements hook_form_alter().
 */
function aizen_form_install_select_profile_form_alter(&$form, $form_state) {
  // Select aizen install profile by default.
  foreach ($form['profile'] as $key => $element) {
    $form['profile'][$key]['#value'] = 'aizen';
  }
}
