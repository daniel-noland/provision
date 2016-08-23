class sshd (
) inherits sshd::params { 

   if !defined(Package[$package]) {
      package {$package:
         ensure => installed,
      }
   }

   service {$service:
      ensure  => running,
      enable  => true,
      require => Package[$package],
   }

}
