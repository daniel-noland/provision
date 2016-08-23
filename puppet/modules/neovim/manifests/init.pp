class neovim (   
) {
   case $::osfamily {
      archlinux: {
         $package = neovim
      }
   }

   package {$package:
      ensure => installed,
   }
}
