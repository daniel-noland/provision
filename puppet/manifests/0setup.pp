File {
   owner => root,
   group => root,
   mode => 644,
}

Exec {
        path => [
                "/usr/local/sbin",
                "/usr/local/bin",
                "/usr/sbin",
                "/usr/bin",
                "/sbin",
                "/bin",
        ]
}

Group {
   forcelocal => true,
}

User {
   forcelocal => true,
}

# vim: set noet :
