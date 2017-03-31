class pam_touchid {
  if str2bool($touchid_present) {
    require homebrew
    homebrew::formula { 'pam_touchid': }
    package { 'boxen/brews/pam_touchid': }

    file { "/etc/pam.d/sudo":
      source => "puppet:///modules/pam_touchid/pam.d/sudo",
      owner => "root",
      mode => "0444"
    }
  }
}
