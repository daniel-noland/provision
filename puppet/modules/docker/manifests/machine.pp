class docker::machine (   
) {
   case $::osfamily {
      archlinux: {
         $package = docker-machine
      }
   }

   package {$package:
      ensure => installed,
   }
}
