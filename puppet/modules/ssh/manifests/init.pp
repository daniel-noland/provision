class ssh (
) inherits ssh::params { 

   if !defined(Package[$package]) {
      package {$package:
         ensure => installed,
      }
   }

}
