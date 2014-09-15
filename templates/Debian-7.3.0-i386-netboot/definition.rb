Veewee::Definition.declare({
  :cpu_count => '2',
  :memory_size=> '1024',
  :disk_size => '10140', :disk_format => 'VDI', :hostiocache => 'off',
  :os_type_id => 'Debian',
  :iso_file => "debian-7.3.0-i386-netinst.iso",
<<<<<<< HEAD
  :iso_src => "http://ftp.acc.umu.se/debian-cd/7.3.0/i386/iso-cd/debian-7.3.0-i386-netinst.iso",
=======
  :iso_src => "",
  :iso_download_instructions => "- You need to download this manually as the ISO is no longer directly downloadable.\n"+
    "Visit http://cdimage.debian.org/cdimage/archive/7.3.0/i386/ and download it via torrent or jigdo",
>>>>>>> 43c30454bb13059edeaa11bb361075790547bbe3
  :iso_md5 => "04c58f30744e64a0459caf7d7cace479",
  :iso_download_timeout => "1000",
  :boot_wait => "10", :boot_cmd_sequence => [
     '<Esc>',
     'install ',
     'preseed/url=http://%IP%:%PORT%/preseed.cfg ',
     'debian-installer=en_US ',
     'auto ',
     'locale=en_US ',
     'kbd-chooser/method=us ',
     'netcfg/get_hostname=%NAME% ',
     'netcfg/get_domain=vagrantup.com ',
     'fb=false ',
     'debconf/frontend=noninteractive ',
     'console-setup/ask_detect=false ',
     'console-keymaps-at/keymap=us ',
     'keyboard-configuration/xkb-keymap=us ',
     '<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => "10000",
  :kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "halt -p",
  :postinstall_files => [
    "base.sh",
    "vagrant.sh",
    "virtualbox.sh",
    #"vmfusion.sh",
    "ruby.sh",
<<<<<<< HEAD
    #"puppet.sh",
=======
    "puppet.sh",
>>>>>>> 63adfa350f8aac602d5996f453c0e8868472f34c
    "chef.sh",
    "cleanup-virtualbox.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => "10000"
})
