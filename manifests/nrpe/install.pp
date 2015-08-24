# Class: icinga2::nrpe::install
#
# This subclass installs NRPE and Nagios plugin packages on Icinga client machines.
#
class icinga2::nrpe::install {

  contain ::icinga2::nrpe::install::repos
  contain ::icinga2::nrpe::install::packages
  contain ::icinga2::nrpe::install::execs
  
}

