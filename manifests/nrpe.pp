# Class: icinga2::nrpe
#
# This subclass manages Icinga client components. This class is just the entry point for Puppet to get at the
# icinga2::nrpe:: subclasses.
#
class icinga2::nrpe (

  $checkplugin_libdir                     = $::icinga2::params::checkplugin_libdir,
  $icinga2_client_packages                = $::icinga2::params::icinga2_client_packages,
  $nrpe_log_facility                      = $::icinga2::params::nrpe_log_facility,
  $nrpe_pid_file_path                     = $::icinga2::params::nrpe_pid_file_path,
  $nrpe_listen_port                       = $::icinga2::params::nrpe_listen_port,
  $nrpe_user                              = $::icinga2::params::nrpe_user,
  $nrpe_group                             = $::icinga2::params::nrpe_group,
  $nrpe_allowed_hosts                     = $::icinga2::params::nrpe_allowed_hosts,
  $nrpe_allow_command_argument_processing = $::icinga2::params::nrpe_allow_command_argument_processing,
  $nrpe_debug_level                       = $::icinga2::params::nrpe_debug_level,
  $nrpe_command_timeout                   = $::icinga2::params::nrpe_command_timeout,
  $nrpe_connection_timeout                = $::icinga2::params::nrpe_connection_timeout,
  $nrpe_config_basedir                    = $::icinga2::params::nrpe_config_basedir,
  $nrpe_command_prefix                    = $::icinga2::params::nrpe_command_prefix
) inherits ::icinga2::params {
  
  #Do some validation of the parameters that are passed in:
  validate_array($nrpe_allowed_hosts)
  validate_string($nrpe_log_facility)
  validate_bool($nrpe_command_prefix)

  #Apply our classes in the right order. 
  contain ::icinga2::nrpe::install
  contain ::icinga2::nrpe::config
  contain ::icinga2::nrpe::service
}

