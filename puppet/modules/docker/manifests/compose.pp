class docker::compose (   
) {

   case $::osfamily {
      archlinux: {
         $package = docker-compose
      }
   }

   package {$package:
      ensure => installed,
   }

}
