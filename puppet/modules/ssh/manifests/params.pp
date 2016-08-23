class ssh::params {
   case $::osfamily {
      redhat: {
         $package = "openssh-client"
         $config    = "/etc/ssh/ssh_config"
      }
      debian: {
         $package = "openssh-client"
         $config    = "/etc/ssh/ssh_config"
      }
      archlinux: {
         $package = "openssh"
         $config    = "/etc/ssh/ssh_config"
      }
      default: {
         fail("Unsupported osfamily: $::osfamily")
      }
   }
}
