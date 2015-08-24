# Class icinga2::nrpe::install::packages
#
class icinga2::nrpe::install::packages {
  package { $::icinga2::params::icinga2_client_packages:
    ensure          => installed,
    provider        => $::icinga2::params::package_provider,
    install_options => $::icinga2::params::client_plugin_package_install_options,
  }

  Package[$::icinga2::params::icinga2_client_packages] -> anchor { 'icinga2::nrpe::packages': }
}

