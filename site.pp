# instalar modulo chocolatey - puppet module install puppetlabs-chocolatey
$base_packages = [
  '7zip.install',
  'adobereader',
  'ccleaner',
  'directx',
  'dropbox',
  'firefox',
  'geforce-experience',
  'googlechrome',
  'hwinfo',
  # 'lastpass',
  'libreoffice-fresh',
  'steam',
  'teamviewer',
  'transmission',
  'vlc',
]
$sysadmin_dev_packages = ['atom', 'docker','evernote','git','rufus','wireshark','vagrant','virtualbox']
$content_creation_packages = ['audacity','gimp','handbrake.install','inkscape']
node default {
  include chocolatey
  Package { provider => chocolatey, ensure   => latest,}
  package { [$base_packages]:}
  # remove comment from the following lines if you whant puppet to install the following packages
  # package { [$sysadmin_dev_packages]:}
  # package { [$content_creation_packages]:}
}
