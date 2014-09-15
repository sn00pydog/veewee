Veewee::Definition.declare({
  :cpu_count => '1', :memory_size=> '512',
  :disk_size => '10140', :disk_format => 'VDI', :hostiocache => 'off',
  :os_type_id => 'FreeBSD_64',
  :iso_file => "FreeBSD-9.2-RELEASE-amd64-disc1.iso",
  :iso_src => "ftp://ftp.freebsd.org/pub/FreeBSD/releases/amd64/ISO-IMAGES/9.2/FreeBSD-9.2-RELEASE-amd64-disc1.iso",
  :iso_md5 => "cde180e3c5e3e370c97598a4feccb5b4",
  :iso_download_timeout => "1000",
  :boot_wait => "10", :boot_cmd_sequence => [
    '<Esc>',
    'boot -s',
    '<Enter>',
    '<Wait><Wait><Wait><Wait><Wait><Wait><Wait><Wait><Wait><Wait>',
    '/bin/sh<Enter>',
    'mdmfs -s 100m md1 /tmp<Enter>',
    'dhclient -l /tmp/dhclient.lease.em0 em0<Enter>',
    '<Wait><Wait><Wait>',
    'echo "Sleeping for 10 seconds, then running install script."<Enter>',
    'sleep 10 ; fetch -o /tmp/install.sh http://%IP%:%PORT%/install.sh && chmod +x /tmp/install.sh && /tmp/install.sh %NAME%<Enter>'
  ],
  :kickstart_port => "7122", :kickstart_timeout => "10000", :kickstart_file => "install.sh",
  :ssh_login_timeout => "10000", :ssh_user => "root", :ssh_password => "vagrant", :ssh_key => "",
  :ssh_host_port => "7222", :ssh_guest_port => "22",
  :sudo_cmd => "sh '%f'",
  :shutdown_cmd => "shutdown -p now",
  :postinstall_files => [ "postinstall.csh"], :postinstall_timeout => "10000"
})
#'setkmap=us dodhcp=em0 dhcphostname=%NAME% ar_source=http://%IP%:%PORT%/ autoruns=0 rootpass=vagrant',
