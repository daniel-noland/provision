class sshd::params {
   case $::osfamily {
      redhat: {
         $package = "openssh-server"
         $config = "/etc/ssh/sshd_config"
         $service = "sshd"
      }
      debian: {
         $package = "openssh-server"
         $config = "/etc/ssh/sshd_config"
         $service = "ssh"
      }
      archlinux: {
         $package = "openssh"
         $config = "/etc/ssh/sshd_config"
         $service = "sshd"
      }
      default: {
         fail("Unsupported osfamily: $::osfamily")
      }
   }
}
