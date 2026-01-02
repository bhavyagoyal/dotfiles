#!/usr/bin/expect -f

set timeout 30

# security key by touching yubikey
set fidokey [lindex $argv 0]

# read mwinit creds in .mpass file
set mpass_file "$env(HOME)/.mpass"
if {[catch {open $mpass_file r} fid]} {
    puts "Error: Cannot open mpass file: $mpass_file"
    exit 1
}
set mpass [read -nonewline $fid]
close $fid

# spawn midway login command
spawn mwinit -o -s 

# wait for midway PIN
expect -re "(?i)PIN.*:" {
        send "$mpass\r"
}
# enter security key
expect "OTP)..." {
        send "$fidokey\r"
}
expect eof
