#
# === Authors
#
# Author Name Pablo Panero (pablo.panero@cern.ch)
#


class misp (
  # MISP installation
  # # MISP repositories
  $misp_git_tag = 'v2.4.51',
  $stix_git_repo = 'git://github.com/STIXProject/python-stix.git',
  $stix_git_tag = 'v1.1.1.4',
  $cybox_git_repo = 'git://github.com/CybOXProject/python-cybox.git',
  $cybox_git_tag = 'v2.1.0.12',
  # # Services
  $webservername = 'httpd',
  $redis_server = true,
  # # database.php
  $db_name = 'misp',
  $db_user = 'misp',
  $db_host = 'localhost',
  $db_port = '3306',
  $db_password = '',
  # # config.php
  $debug = 0,
  $site_admin_debug = false,
  # # MISP puppet configuration
  $install_dir = '/var/www/MISP/',
  $config_dir = "${install_dir}/app/Config/",
  $timezone = 'UTC',
  $default_user = 'apache',
  $default_group = 'apache',
  $default_high_user = 'root',
  $default_high_group = 'apache',
  # # Security
  $security_level = 'medium',
  $salt = 'Rooraenietu8Eeyo<Qu2eeNfterd-dd+',
  $cipherseed = '',
  $auth_method = '', # Empty means default user-password login method
  $password_policy_length = 6,
  $password_policy_complexity = '/((?=.*\\d)|(?=.*\\W+))(?![\\n])(?=.*[A-Z])(?=.*[a-z]).*$/',
  $sanitise_attribute_on_delete = false,
  # # MISP parameters
  $live = true,
  $enable_advanced_correlations = false, # TODO
  $maintenance_message = "Great things are happening! MISP is undergoing maintenance, but will return shortly. You can contact the administration at \$email.",
  $footermidleft = '',
  $footermidright = '',
  $footer_logo = '',
  $home_logo = '', # TODO
  $main_logo = '', #TODO
  $org = 'ORGNAME',
  $host_org_id = '1',
  $showorg = true,
  $threatlevel_in_email_subject = true, #TODO
  $email_subject_tlp_string = 'TLP Amber',
  $email_subject_tag = 'tlp', #TODO
  $email_subject_include_tag_name = true, #TODO
  $background_jobs = true,
  $cached_attachments = true,
  $email = 'root@localhost', # This address is used as sender (from) when sending notifications
  $disable_emailing = false,
  $contact = 'root@localhost', # This address is used in error messages
  $cveurl = 'http://cve.circl.lu/cve/',
  $disablerestalert = false,
  $extended_alert_subject = false,
  $default_event_distribution = '1',
  $default_attribute_distribution = 'event',
  $default_event_threat_level = '1',
  $tagging = true,
  $full_tags_on_event_index = true,
  $welcome_text_top = '', #TODO
  $welcome_text_bottom = '', #TODO
  $welcome_logo = '', #TODO
  $welcome_logo2 = '', #TODO
  $take_ownership_xml_import = false,
  $terms_download = false,
  $terms_file = '', #TODO
  $showorgalternate = false,
  $unpublishedprivate = false,
  $new_user_text = "Dear new MISP user,\\n\\nWe would hereby like to welcome you to the \$org MISP community.\\n\\n Use the credentials below to log into MISP at \$misp, where you will be prompted to manually change your password to something of your own choice.\\n\\nUsername: \$username\\nPassword: \$password\\n\\nIf you have any questions, don\'t hesitate to contact us at: \$contact.\\n\\nBest regards,\\nYour \$org MISP support team",
  $password_reset_text = "Dear MISP user,\\n\\nA password reset has been triggered for your account. Use the below provided temporary password to log into MISP at \$misp, where you will be prompted to manually change your password to something of your own choice.\\n\\nUsername: \$username\\nYour temporary password: \$password\\n\\nIf you have any questions, don\'t hesitate to contact us at: \$contact.\\n\\nBest regards,\\nYour \$org MISP support team",
  $enable_event_black_listing = false,
  $enable_org_blacklisting = false,
  $log_client_ip = false,
  $log_auth = false,
  $mangle_push_to_23 = false, #TODO //advised against, FALSE
  $delegation = false, #TODO
  $show_correlations_on_index = false, #TODO
  $show_proposals_count_on_index = false, #TODO
  $show_sightings_count_on_index =  false, #TODO
  $show_discussions_count_on_index =  false, #TODO
  $disable_user_self_management = false,
  $block_event_alert = false, #TODO
  $block_event_alert_tag = 'no-alerts="true"', #TODO
  $block_old_event_alert = false,
  $block_old_event_alert_age = 30,
  $rh_shell_fix = false, #TODO
  $rh_shell_fix_path = '/opt/rh/rh-php56/root/usr/bin:/opt/rh/rh-php56/root/usr/sbin', #TODO
  $tmpdir = '/tmp', #TODO
  $custom_css = '', #TODO
  $proposals_block_attributes = false, #TODO
  $incoming_tags_disabled_by_default = false, #TODO
  $completely_disable_correlation = false, #TODO
  $allow_disabling_correlation = false, #TODO
  # # GPG
  $gpg_binary = '/usr/bin/gpg', #TODO
  $gpg_onlyencrypted = false,
  $gpg_email = 'no-reply@localhost',
  $gpg_homedir = '/var/www/MISP/',
  $gpg_password = '',
  $gpg_bodyonlyencrypted = false,
  # # SMIME
  $smime_enabled = false,
  $smime_email = '',
  $smime_cert_public_sign = '',
  $smime_key_sign = '',
  $smime_password = '',
  # # Proxy
  $proxy_host = '',
  $proxy_port = '',
  $proxy_method = '',
  $proxy_user = '',
  $proxy_password = '',
  # # SecureAuth
  $secure_auth_amount = 5,
  $secure_auth_expire = 300,
  # # Session
  $session_auto_regenerate = false, #TODO
  $session_defaults = 'php', #TODO
  $session_timeout = '60', #TODO
  # # Plugin
  $rpz_policy = 0,
  $rpz_walled_garden = '127.0.0.1',
  $rpz_serial = '$date00',
  $rpz_refresh = '2h',
  $rpz_retry = '30m',
  $rpz_expiry = '30d',
  $rpz_minimum_ttl = '1h',
  $rpz_ttl = '1w',
  $rpz_ns = 'localhost',
  $rpz_email = 'root.localhost',
  $zeromq_enable = false,
  $zeromq_port = 50000,
  $zeromq_redis_host = 'localhost',
  $zeromq_redis_port = 6379,
  $zeromq_redis_password = '',
  $zeromq_redis_database = '1',
  $zeromq_redis_namespace = 'mispq',
  $sightings_enable = false,
  $sightings_policy = 0,
  $sightings_anonymise = false,
  $customauth_enable = false, #TODO
  $customauth_header = 'Authorization', #TODO
  $customauth_use_header_namespace = true, #TODO
  $customauth_header_namespace = 'HTTP_', #TODO
  $customauth_required = false, #TODO
  $customauth_only_allow_source = '', #TODO
  $customauth_name = 'External authentication', #TODO
  $customauth_disable_logout = false, # TODO
  $customauth_custom_password_reset = '', #TODO
  $customauth_custom_logout = '', #TODO
  $enrichment_services_enable = true,
  $enrichment_timeout = 10,
  $enrichment_hover_enable = true,
  $enrichment_hover_timeout = 5,
  $enrichment_services_url = 'http://127.0.0.1',
  $enrichment_services_port = 6666,
  $import_services_enable = true,
  $import_timeout = 10,
  $import_services_url = 'http://127.0.0.1',
  $import_services_port = 6666,
  $export_services_url = 'http://127.0.0.1',
  $export_services_port = 6666,
  $export_services_enable = true,
  $export_timeout = 10,
  # ApacheShibbAuth
  $shib_default_org = '1',
  $egroup_role_match = {},
) {

  contain '::misp::dependencies'
  contain '::misp::install'
  contain '::misp::config'
  contain '::misp::service'
}
