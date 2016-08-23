class docker (   
) {

   case $::osfamily {
      archlinux: {
         $package = docker
         $service = docker
      }
   }

   package {$package:
      ensure => installed,
   }

   service {$service:
      ensure  => running,
      enable  => true,
      require => Package[$package],
   }

   include ::docker::compose
   include ::docker::machine

}
